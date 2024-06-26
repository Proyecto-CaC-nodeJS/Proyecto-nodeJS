/*    */

const { DataTypes } = require('sequelize');

const commonDescriptionFields = {
    description: {
        type: DataTypes.STRING,
        allowNull: false,
    }
};

module.exports = commonDescriptionFields;