const http = require('http');

http.createServer((req, res) => {
  res.write('Hello World is coming from the sample nodejs');
  res.end();
}).listen(3000, () => {
  console.log('Server start at port 3000');
});