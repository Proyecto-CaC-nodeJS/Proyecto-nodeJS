/*  */

const { accountProvider } = require("../providers/indexProviders");

const getAllAccounts = async () => {
    try {
        return await accountProvider.getAllAccounts();
    } catch (error) {
        throw new Error(`Error al obtener los gamers: ${error.message}`);
    }
};

const getAccountById = async (id) => {
    try {
        return await accountProvider.getAccountById(id);
    } catch (error) {
        throw new Error(`Error al obtener el gamer por ID: ${error.message}`);
    }
};

const createAccount = async (data) => {
    try {
        return await accountProvider.createNewAccount(data);
    } catch (error) {
        throw new Error(`Error al crear el gamer: ${error.message}`);
    }
};

const deleteAccount = async (id) => {
    try {
        return await accountProvider.deleteAccount(id);
    } catch (error) {
        throw new Error(`Error al eliminar el gamer: ${error.message}`);
    }
};

const updateAccount = async (id, data) => {
    try {
        return await accountProvider.updateAccount(id, data);
    } catch (error) {
        throw new Error(`Error al actualizar el gamer: ${error.message}`);
    }
};

module.exports = {
    getAllAccounts,
    getAccountByPk,
    //getAccountById,
    createAccount,
    deleteAccount,
    updateAccount,
};
