var db = require("./database");
let data = [];
module.exports = class Product {
  constructor() {}
  static fetchAll() {
    let sql = `select * from products`;
    // db.query(sql, function (err, d) {
    //   if (err) throw err;
    //   data = d;
    // });
    // return data;
    return new Promise((resolve, reject) => {
      db.query(sql, function (err, data) {
        if (err) {
          throw err;
        } else {
          resolve(data);
        }
      });
    });
  }
  static save(prod) {
    let sql = `insert into products set ?`;
    db.query(sql, prod, function (err, data) {
      if (err) throw err;
      return true;
    });
  }
  static edit(id) {
    let sql = `select * from products where id=${id}`;
    return new Promise((resolve, reject) => {
      db.query(sql, function (err, data) {
        if (err) throw err;
        else resolve(data[0]);
      });
    });
  }
  static del(id) {
    let sql = `DELETE FROM products WHERE id = ${id}`;
    return new Promise((resolve, reject) => {
      db.query(sql, function (err, result) {
        if (err) {
          reject(err);
        } else {
          resolve(result);
        }
      });
    });
  }
  static update(prod) {
    let sql = `update products set ? where id=${prod.id}`;
    db.query(sql, prod, function (err, data) {
      if (err) throw err;
      return true;
    });
  }
};
