# Makefile for Docker NodeJS

include .env

NODE_UP := $(shell docker-compose ps | grep node)

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  clean      Clean dependencies"
	@echo "  help       Show this help screen"
	@echo "  install    Create and start containers"
	@echo "  logs       Watch log output"
	@echo "  restart    Restart all containers"
	@echo "  start      Start all containers"
	@echo "  status     Show containers current status"
	@echo "  stop       Stop all services"
	@echo "  test       Run eslint and application unit tests "
	@echo "  uninstall  Stop and clear all services"
	@echo "  update     Update Node dependencies with yarn"

init:
	@make node-up
	@docker-compose exec node yarn install

clean:
	@make node-up
	@docker-compose exec node rm -Rf /home/node/app/node_modules

install: init
	@make start
	@make test

lint:
	@make node-up
	@docker-compose exec node yarn eslint --fix src --ext .js

logs:
	@docker-compose logs -f

node-up:
	@if [ "$(NODE_UP)" = '' ]; then\
		echo "Node is down";\
		docker-compose up -d --no-deps node;\
	else\
		echo "Node is up";\
	fi;

node-down:
	@if [ "$(NODE_UP)" = '' ]; then\
		echo "Node is down";\
	else\
		echo "Node is up";\
        docker-compose down -v node;\
	fi;

restart:
	@docker-compose restart

start:
	@docker-compose up -d

status:
	@docker-compose ps

stop:
	@docker-compose down -v --remove-orphans

test:
	@make lint
	@#make unit

uninstall:
	@make clean
	@make stop

unit:
	@make node-up
	@docker-compose exec node yarn eslint --fix src --ext .js

update: init
	@make node-up
	@docker-compose exec node yarn upgrade

.PHONY: clean test init
