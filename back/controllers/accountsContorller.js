/*  */

const accountService = require("../services/accountService");
const constants = require("../config/constants.js");

const getAllAccounts = async (req, res) => {
    try {
        const accounts = await accountService.getAllAccounts();
        res.json(accounts);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const getAccountByPk = async (req, res) => {
    try {
        const account = await accountService.getGamerByPk(req.params.id);
        if (account) {
            res.json(account);
        } else {
            res.status(404).json({ error: `${constants.ACCOUNT_NOT_FOUNDS}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const getAccountById = async (req, res) => {
    try {
        const account = await accountService.getGamerById(req.params.id);
        if (account) {
            res.json(account);
        } else {
            res.status(404).json({ error: `${constants.ACCOUNT_NOT_FOUNDS}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const createAccount = async (req, res) => {
    try {
        const newAccount = await accountService.createGamer(req.body);
        res.status(201).json(newAccount);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const deleteAccount = async (req, res) => {
    try {
        const deletedAccount = await accountService.deleteGamer(req.params.id);
        if (deletedAccount) {
            res.json(deletedAccount);
        } else {
            res.status(404).json({ error: `${constants.ACCOUNT_NOT_FOUNDS}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const updateAccount = async (req, res) => {
    try {
        const updatedAccount = await accountService.updateGamer(req.params.id, req.body);
        if (updatedAccount) {
            res.json(updatedAccount);
        } else {
            res.status(404).json({ error: `${constants.ACCOUNT_NOT_FOUNDS}` });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

module.exports = {
    getAllAccounts,
    getAccountByPk,
    getAccountById,
    createAccount,
    deleteAccount,
    updateAccount,
};
