const express = require('express');
const app = express();
const port = 3000;

app.listen(port,()=> {console.log(`listening port: ${port}`);})

app.get('/hello-world', (req,res)=>{res.send('Hello World');})
