import 'dart:html';

class KeyStrokes {
  
  Element elem;
  
  KeyStrokes(Element this.elem);
  
  void bind() {
      elem.text = ''; // Clear 'Loading...' text
      document.body.onKeyUp.listen(_keyEventHandler);
  }
  
  void _keyEventHandler(KeyboardEvent keyUpEvent) {
    
      RegExp allowedCharacters = new RegExp(r'^[a-zA-Z0-9]$');
      String pressedKey = new String.fromCharCode(keyUpEvent.keyCode);

      // If not alphanumeric characters then discontinue execution of code
      if(allowedCharacters.hasMatch(pressedKey) == false) return;
      
      Element span = new SpanElement()
                     ..text = pressedKey
                     ..classes.add('key');
      
      Element content = elem..children.add(span);
      
      
      // Vendor prefixes to detect animationend events
      List<String> prefixes = ['webkitAnimationEnd','MSAnimationEnd','oAnimationEnd','animationend'];
      
      prefixes.forEach((String prefix) {
        span.addEventListener(prefix, _animationEndHandler);
      });
    
  }
  
  void _animationEndHandler(dynamic animationEndEvent) {
      
      Element span = animationEndEvent.target as SpanElement;

      if(animationEndEvent.animationName == "expand-and-fade") {
        span.remove();
      }
        
  }
}


main() {
  
  KeyStrokes ks = new KeyStrokes(querySelector('#content'))
                  ..bind();
}

