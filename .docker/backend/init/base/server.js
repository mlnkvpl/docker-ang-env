const http = require('http');

const hostname = process.env.BACKEND_HOST || '0.0.0.0';
const port = process.env.BACKEND_INSIDE_PORT || 8080;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello World 2');
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});