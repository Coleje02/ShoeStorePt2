const express = require('express')
const morgan = require('morgan')
const ejs = require('ejs')
const mysql = require("mysql")
const portNumber = 8000;
const app = express()

app.set("view engine", "ejs")
app.set("views","views")

app.use(morgan('dev'))
app.use(express.static("public"))
app.use(express.urlencoded({extended: false})) 

const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'cis393finalproject'
})

con.connect((err) =>{
    if(err) throw err;
    console.log("Database is connected")
})

app.get("/home", (req,res) => {
    const q = "select count(*) as count from shoes"
    con.query(q,(err,results)=>{
        if(err) throw err;
        res.render("home.ejs",{count: results[0].count})
    })
})

app.get("/about.html", (req,res) => {
    con.query((err,results)=>{
        if(err) throw err;
        res.render("about.html")
    })
})

app.get("/accountInfo.html", (req,res) => {
    con.query((err,results)=>{
        if(err) throw err;
        res.render("accountInfo.html")
    })
})

app.listen(portNumber, () => {
    console.log(`Server is running on port ${portNumber}`);
});