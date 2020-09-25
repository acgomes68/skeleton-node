import { Router } from 'express';

import NodeController from './app/controllers/NodeController';

const routes = new Router();

/*----------------------------------------------------------------------*/
// Public access routes

// Nodes
routes.get('/', NodeController.index);

export default routes;
