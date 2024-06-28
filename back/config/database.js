/*    */

const environment = process.env.ENVIRONMENT;
console.log(`[nodemon] ejecutando en ${environment}`);

module.exports = {
    dialect: process.env.DB_DIALECT || 'mysql',
    host: process.env.DB_HOST || 'localhost',
    port: parseInt(process.env.DB_PORT, 10) || 3306,
    username: process.env.DB_USERNAME || 'root',
    password: process.env.DB_PASSWORD || 'root',
    database: process.env.DB_DATABASE || 'gg-games',
    logging: process.env.DB_LOGGING === 'true',
};