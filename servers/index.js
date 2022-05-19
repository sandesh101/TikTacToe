const express = require('express');
const http = require('http');
const mongoose = require('mongoose');

const app = express();
const PORT = process.env.PORT || 8000;
const Room = require('./models/room');

var server = http.createServer(app);

var io = require('socket.io')(server);

//middleware, express.json will convert all the data coming into it to a json
app.use(express.json());

const DB = "mongodb+srv://sandesh:tictoe1@cluster0.7p34g.mongodb.net/myFirstDatabase?retryWrites=true&w=majority";

io.on('connection', (socket)=>{
    console.log('Connected socket');
    socket.on('createRoom', async ({nickname})=>{
        console.log(nickname);
        
        try{
            let room = new Room(); 
        let player = {
            socketID : socket.id,
            nickname,
            playerType: 'X',
        };
        room.players.push(player);
        room.turn = player;
        room = await room.save();
        const roomId = room._id.toString();
        socket.join(roomId);

        io.to(roomId).emit('createRoom Success', room)
        }catch(e){
            console.log(e);
        };
    });
});

mongoose.connect(DB).then(() => {
    console.log('Connection Successfulls');
}).catch((e) => {
    console.log(e);
})

server.listen(PORT, '0.0.0.0',() =>{
    console.log(`Server has been started and is listening on ${PORT}`);
});