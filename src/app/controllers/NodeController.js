module.exports = {
    async index(req, res) {
        try {
            return res.json({ 'Teste Node': 'Tranquilo, funcionou!' });
        } catch (error) {
            return res.status(502).json({ error });
        }
    },
};
