const mySql = require("mysql");
//create connect to database
const db = mySql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'db_students',
})
// connect database
db.connect((error) => {
    if(error) {
        console.log("connect db failed");
        return;
    }
    console.log("connect db success");
})
const getDataFromServer = (req, res) => {
    const isQuery = "SELECT * FROM student";
    db.query(isQuery, (err, response) => {
        if(err) res.json({result: "failed"});
        res.json({result: response});
    });
};

const postMaSinhVien = (req, res) => {
    const { maSV } = req.body;
    const isQuery = "SELECT * FROM student WHERE maso_sv = ?";
    db.query(isQuery, maSV, (err, response) => {
        if(err) res.json({result: "failed"});
        res.json({result: response});
    });
};

module.exports = {
    getData: getDataFromServer,
    postData: postMaSinhVien,
}