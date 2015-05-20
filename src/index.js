var http = require('http');

http.createServer( function ( req, res ) {
	res.writeHead(200, {'Content-Type': 'text/html'});
	res.write(
		'<HTML><BODY><img src=http://upload.wikimedia.org/wikipedia/en/4/4f/Under_construction.JPG></BODY></HTML>');
	res.end();
}).listen(1337);
console.log('Server running at http://127.0.0.1:1337/');