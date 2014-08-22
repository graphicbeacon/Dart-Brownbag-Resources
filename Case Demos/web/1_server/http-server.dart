import 'dart:io';

void main() {
  // Creating a simple http server
  HttpServer.bind('127.0.0.1', 1345).then((HttpServer server) {
    
    // Using streams we are listening for
    // http server to our server
    server.listen((HttpRequest request) {
      // Sending our response
      request.response.write('Hello, World');
      
      // Closing response
      request.response.close();
    });
    
  });
  
}