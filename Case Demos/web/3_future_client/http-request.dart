import 'dart:html';

void main() {
  querySelector('#button')
          ..text = 'Retrieve File'
          ..onClick.listen(retrieveFile);
}

void retrieveFile(dynamic clickEvent) {
  // Simple XMLHttpRequest to retrieve text file
  HttpRequest.request('resources/sample.txt')
              .then((HttpRequest request) {
    
                    // Creating div to contain file contents
                    var div = new DivElement()
                            ..style.backgroundColor = "gold"
                            ..style.color = '#fff'
                            ..style.fontFamily = "Helvetica"
                            ..style.padding = "10px"
                            ..text = "${request.response}";
                            
                            document.body.children.insert(1, div);
              });
}