/*  */

const gameService = require("../services/gameService");
const { JUEGO_NO_ENCONTRADO } = require("../config/constants");

const getAllGames = async (req, res) => {
    try {
        const games = await gameService.getAllGames();
        res.json(games);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const getGameByPk = async (req, res) => {
    try {
        const game = await gameService.getGameByPk(req.params.id);
        if (game) {
            res.json(game);
        } else {
            res.status(404).json({ error: `${JUEGO_NO_ENCONTRADO}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const getGameById = async (req, res) => {
    try {
        const game = await gameService.getGameById(req.params.id);
        if (game) {
            res.json(game);
        } else {
            res.status(404).json({ error: `${JUEGO_NO_ENCONTRADO}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const createGame = async (req, res) => {
    try {
        const newGame = await gameService.createGame(req.body);
        res.status(201).json(newGamer);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const deleteGame = async (req, res) => {
    try {
        const deletedGame = await gameService.deleteGame(req.params.id);
        if (deletedGame) {
            res.json(deletedGame);
        } else {
            res.status(404).json({ error: `${JUEGO_NO_ENCONTRADO}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const updateGame = async (req, res) => {
    try {
        const updatedGame = await gameService.updateGame(req.params.id, req.body);
        if (updatedGame) {
            res.json(updatedGame);
        } else {
            res.status(404).json({ error: `${JUEGO_NO_ENCONTRADO}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};
module.exports = {
    getAllGames,
    getGameByPk,
    getGameById,
    createGame,
    deleteGame,
    updateGame,
};
