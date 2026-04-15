const express=require('express');
const app=express();
const port=3112;
app.get('/',(req,res)=>{
res.send("Hello Express");
});
app.listen(port,()=>{
console.log(`Example webapp listening at ${port}`);
});

//require means to import; here we import express as express(as like import panda as pd)
//app is your express app
//app.listen inside that we create unknown function 
//app.get ,request send to port and heloo express got.
