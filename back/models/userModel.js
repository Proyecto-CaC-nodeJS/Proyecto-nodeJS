/*  */

const { DataTypes } = require("sequelize");
const sequelize = require("../data/db");

const commonIdFields = require('./commonIdFields');
const commonActiveFields = require('./commonActiveFields');
const commonCreatedFields = require('./commonCreatedFields');
const commonUpdatedFields = require('./commonUpdatedFields');

const User = sequelize.define("users", {
    ...commonIdFields,
    user: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    nickName: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    pass: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    rolId: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    checked: {
        type: DataTypes.TINYINT,
        allowNull: false,
        defaultValue: 0
    },
    ...commonActiveFields,
    ...commonCreatedFields,
    ...commonUpdatedFields
    
    /*
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    lastName: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    email: {
        type: DataTypes.STRING,
        unique: true,
        allowNull: false,
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    */
}, {
    timestamps: true,
});

module.exports = User;
