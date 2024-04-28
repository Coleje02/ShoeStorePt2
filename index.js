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
    let bid = req.body.bid
    let seller = req.body.buyer
    let id = req.body.id
    let query = req.query.query
    if(query){
        const s = "SELECT * FROM shoes WHERE name LIKE ?";
        con.query(s, [`%${query}%`], (err, results) => {
            if(err) throw err;
            res.render("home.ejs", { shoes: results, bid, seller, id });
        });
    }else{
        const q = "select * from shoes"
        con.query(q,(err,results)=>{
            if(err) throw err;
            res.render("home.ejs",{shoes: results,bid,seller,id})
        })
    }
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

app.get('/sellShoe', (req,res) => {
    let name = req.body.name 
    let price = req.body.price
    let image = req.body.image
    let bid = req.body.bid
    let seller = req.body.seller
    console.log("Name: ",name, "Price: ", price, "image: ",image, "bid: ", bid, "seller: ",seller)
    res.render("sellShoe.ejs", {name,price,image,bid,seller})
})

app.post('/sell', (req,res) => {
    let name = req.body.name 
    let price = req.body.price
    let image = req.body.image
    let bid = req.body.bid
    let seller = req.body.seller
    const shoeInfo = {name:name, price:price, image:image, seller:seller, bid:bid}
    const q = "insert into shoes set ?"
    console.log("Name: ",name, "Price: ", price, "image: ",image, "bid: ", bid, "seller: ",seller)
    con.query(q,shoeInfo,(err,results)=>{
        if(err) throw err;
        else{
            res.redirect("/home")
        }
    })
})

app.post('/updateBid', (req,res) => {
    let id = req.body.id
    let bid = req.body.bid
    let buyer = req.body.buyer
    const bidderInfo = [buyer,bid,id]
    const q = "update shoes set buyer = ?, bid = ? where id = ?"
    con.query(q,bidderInfo,(err,results)=>{
        if(err) throw err;
        else{
            console.log(results)
            res.redirect("/home")
        }
    })
})

app.post('/deleteShoe', (req,res) => {
    let id = req.body.id
    const q = "delete from shoes where id = ?"
    con.query(q,[id],(err,results)=>{
        if(err) throw err;
        else{
            console.log(results)
            res.redirect("/home")
        }
    })
})

app.listen(portNumber, () => {
    console.log(`Server is running on port ${portNumber}`);
});