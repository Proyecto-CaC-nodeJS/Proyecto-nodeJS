/*    */

const { DataTypes } = require('sequelize');

const commonNameFields = {
    name: {
        type: DataTypes.STRING,
        allowNull: false,
    }
};

module.exports = commonNameFields;