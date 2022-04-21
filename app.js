const http = require('http');

const port = process.env.PORT

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(`
    Hello Convox!
    I'm: ${process.env.APP}
    Build:${process.env.BUILD}
    Release: ${process.env.RELEASE}
    running on: ${process.env.RACK}
    Environment: ${process.env.ENVIRONMENT}
  `);
  console.log('PING');
});

server.listen(port, () => {
  console.log(`Server running at ${port}/`);
});
