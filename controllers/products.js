var modelProduct = require("../models/product");
exports.getProducts = async (req, res, next) => {
  var listProd = await modelProduct.fetchAll();
  res.render("products", { list: listProd });
};
exports.addNew = (req, res, next) => {
  var _product = new Object();
  res.render("form-product", {
    PRODUCT: _product,
    PATH: "/products/add-new",
  });
};
exports.saveProduct = (req, res, next) => {
  let _idcatalog = req.body.idcatalog;
  let _name = req.body.name;
  let _img = req.body.img;
  let _price = req.body.price;
  product = {
    idcatalog: _idcatalog,
    name: _name,
    img: _img,
    price: _price,
  };
  modelProduct.save(product);
  res.redirect("/products");
};
exports.updateProduct = (req, res, next) => {
  let _id = req.body.id;
  let _idcatalog = req.body.idcatalog;
  let _name = req.body.name;
  let _img = req.body.img;
  let _price = req.body.price;
  product = {
    id: _id,
    idcatalog: _idcatalog,
    name: _name,
    img: _img,
    price: _price,
  };
  modelProduct.update(product);
  res.redirect("/products");
};
exports.editProduct = async (req, res, next) => {
  var id = req.params.id;
  let _product = await modelProduct.edit(id);
  res.render("form-product", {
    PRODUCT: _product,
    PATH: "/products/update",
  });
};
exports.delProduct = async (req, res, next) => {
  var id = req.params.id;
  try {
    await modelProduct.del(id); // Gọi phương thức xóa sản phẩm
    res.redirect("/products"); // Chuyển hướng sau khi xóa
  } catch (error) {
    // Xử lý lỗi nếu có
    console.error(error);
    res.status(500).send("Xóa sản phẩm không thành công");
  }
};
