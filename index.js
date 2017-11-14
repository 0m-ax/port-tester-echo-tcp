var net = require('net');

var server = net.createServer(function(socket) {
    socket.on('data',(data)=>{
	    socket.write(data);
    })
    socket.on('error',()=>{})
});

server.listen(7777);
