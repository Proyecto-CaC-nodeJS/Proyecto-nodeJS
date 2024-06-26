/*  */

const { DataTypes } = require("sequelize");
const sequelize = require("../data/db");

const commonIdFields = require('./commonIdFields');
const commonDescriptionFields = require('./commonDescriptionFields');
const commonNameFields = require('./commonNameFields');
const commonActiveFields = require('./commonActiveFields');
const commonCreatedFields = require('./commonCreatedFields');
const commonUpdatedFields = require('./commonUpdatedFields');

const Game = sequelize.define("games", {
    ...commonIdFields,
    gamerId: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    ...commonNameFields,
    ...commonDescriptionFields,
    ...commonActiveFields,
    ...commonCreatedFields,
    ...commonUpdatedFields

    /*
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    nickname: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    score: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    */
}, {
    timestamps: true,
});

module.exports = Game;