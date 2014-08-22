import 'dart:async' show Completer, Future, Timer;

Future getFuture() {
  // Produce future objects and complete them later with value or error
  Completer c = new Completer();
  
  new Timer(new Duration(milliseconds: 1000), () {
    c.complete('done!');
    
    // or you can complete with an error
    // c.completeError('Something went wrong!')
  });
  
  return c.future;
}

main() {
  
  Future result = getFuture();
  
  result.then((String result) { 
      print(result); 
  })
  .catchError((err){
    print('Problems: $err');
  });
}