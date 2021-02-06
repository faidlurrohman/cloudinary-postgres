const db = require("../../services/dbConnect");

exports.allImage = (request, response) => {
  db.pool.connect((err, client) => {
    // query to find image
    const allQuery = "SELECT * FROM images";
    // execute query
    client
      .query(allQuery)
      .then((output) => {
        response.status(200).send({
          status: "success",
          data: output.rows,
        });
      })
      .catch((error) => {
        response.status(401).send({
          status: "failure",
          data: {
            message: "could not retrieve record!",
            error,
          },
        });
      });
  });
};
