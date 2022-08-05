const express = require('express');
const app = express(); //variable

const mysql = require('mysql');
const cors = require('cors');

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    user: 'root',
    host: 'localhost',
    password: '',
    database: 'accountingsystem'
});

app.post('/create', (req, res)=>{
    const id= req.body.id;
    const accountname= req.body.accountname;

    db.query('INSERT into accsys (ID, Account_Name)  VALUES (?,?)', [id, accountname],
   (err, result) => {
    if(err)
    {console.log(err)}
    else{
        res.send("inserted into table")
    }
   } 
   )
})
app.listen(3001,()=>{ 
    console.log('server running on 3001');
})
