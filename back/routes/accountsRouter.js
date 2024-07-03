/*  */

const express = require("express");
const router = express.Router();
const accountsController = require("../controllers/accountsContorller");

router.get("/", accountsController.getAllGamers);
router.get("/:id", accountsController.getGamerByPk);
//router.get("/:id", accountsController.getGamerById);
router.post("/", accountsController.createGamer);
router.delete("/:id", accountsController.deleteGamer);
router.put("/:id", accountsController.updateGamer);

module.exports = router;