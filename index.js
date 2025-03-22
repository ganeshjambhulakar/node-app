const express = require('express')

const app = express();

app.get('/',(req,res)=>{
    res.json({message:"Hey from my first ec2"})
})

app.listen(process.env.PORT || 8000,()=>console.log("Server Started"))