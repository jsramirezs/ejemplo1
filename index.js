'use strict';
const http = require('http');
require('dotenv').config();
const server = http.createServer(function (req, res) {
    res.writeHead(200, {
        'content-type': 'text/plain'
    });
    res.end('Hola Mundo');

});
server.listen(process.env.PORT || 8000, () => {
    console.log(`running on ${process.env.PORT || 8000}`)
});