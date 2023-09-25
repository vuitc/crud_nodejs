var controllerCatalog = require("../controllers/products");
var express = require("express");
var router = express.Router();
router.get("/", controllerCatalog.getProducts);
router.get("/add-new", controllerCatalog.addNew);
router.post("/add-new", controllerCatalog.saveProduct);
router.get("/edit/:id", controllerCatalog.editProduct);
router.post("/update", controllerCatalog.updateProduct);
router.get("/del/:id", controllerCatalog.delProduct);

module.exports = router;
