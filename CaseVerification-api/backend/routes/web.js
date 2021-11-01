const express = require("express");
const router = express.Router();

const controller = require("../controllers/file.controller");
const uploadController = require("../middleware/multiUploadController");

let routes = (app) => {
  router.post("/upload", controller.upload);
  router.post("/multiple-upload", uploadController.multipleUpload);
  router.get("/files", controller.getListFiles);
  router.get("/files/:name", controller.download);

  app.use(router);
};

module.exports = routes;





//-------------------------------------- Multiple - file upload ---------------


// const express = require("express");
// const router = express.Router();
// const homeController = require("../controllers/home");
// const uploadController = require("../controllers/upload");

// let routes = app => {
//   router.get("/", homeController.getHome);

//   router.post("/multiple-upload", uploadController.multipleUpload);

//   return app.use("/", router);
// };

// module.exports = routes;