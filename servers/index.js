const express = require('express');
const http = require('http');

const app = express();
const PORT = process.env.PORT || 8000;

var server = http.createServer(app);

var io = require('socket.io')(server);

//middleware, express.json will convert all the data coming into it to a json
app.use(express.json());

server.listen(PORT, '0.0.0.0',() =>{
    console.log(`Server has been started and is listening on ${PORT}`);
});