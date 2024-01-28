const router = require("express").Router();
const userStorer = require("../Controller/userData");

router.get("/", userStorer.gettingAllData);
router.post("/", userStorer.postingData);
router.patch("/:userId", userStorer.updatingData);
router.delete("/:userId", userStorer.deletingData);

module.exports = router;
