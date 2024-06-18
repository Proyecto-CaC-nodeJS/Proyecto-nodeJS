
const {Sequelize} = require ("sequelize")

/* nombre de tu base datos - users - contraseña - {donde esta alojada tu bd?,lenguaje,puerto} */

const db = new Sequelize ("gg-games","root","root",{
host : "localhost",
dialect:"mysql",
port:3308
})

module.exports = db
