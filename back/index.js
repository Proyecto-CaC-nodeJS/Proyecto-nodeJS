/*  */

require('dotenv').config({ path: `.env.${process.env.NODE_ENV}` })
const app = require("./app");
const sequelize = require("./data/db");

const port = process.env.PORT || 3030;

const startServer = async () => {
    try {
        await sequelize.authenticate();
        console.log("Conexión exitosa a la base de datos");

        app.listen(port, () => {
            console.log(`Servidor corriendo en el puerto ${port}`);
        });
    } catch (error) {
        console.error(`Error al conectar con la base de datos: ${error.message}`);
    }
};

startServer();

