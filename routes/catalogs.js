var controllerCatalog = require("../controllers/catalogs");
var express = require("express");
var router = express.Router();
router.get("/", controllerCatalog.getCatalog);
router.get("/addnew", controllerCatalog.addnew);
module.exports = router;
