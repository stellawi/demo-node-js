const http = require('http');

http.createServer((req, res) => {
  res.write('Hello World');
  res.end();
}).listen(3000, () => {
  console.log('Server start at port 3000');
});