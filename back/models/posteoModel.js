/*  */

const { DataTypes } = require("sequelize");
const sequelize = require("../data/db");

const Posteo = sequelize.define("Posteo", {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    content: {
        type: DataTypes.TEXT,
        allowNull: false,
    },
}, {
    timestamps: true,
});

module.exports = Posteo;
