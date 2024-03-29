const express = require("express");
const router = express.Router();

const allImage = require("./controllers/allImage");
const uploadImage = require("./controllers/uploadImage");
const getImage = require("./controllers/getImage");
const deleteImage = require("./controllers/deleteImage");
const updateImage = require("./controllers/updateImage");

router.get("/", (request, response) => {
  response.json({ eating: "HAMburger!" });
});

router.get("/all-images", allImage.allImage);
router.post("/upload-image", uploadImage.uploadImage);
router.get("/get-image/:cloudinary_id", getImage.getImage);
router.delete("/delete-image/:cloudinary_id", deleteImage.deleteImage);
router.put("/update-image/:cloudinary_id", updateImage.updateImage);

module.exports = router;
