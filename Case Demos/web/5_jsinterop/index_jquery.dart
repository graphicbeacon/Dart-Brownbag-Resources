import 'dart:js' show context, JsObject;

main() {
  
  // Returning a proxy to jQuery('#box')
  // Second parameter is a List<dynamic> literal of arguments
  JsObject $box = new JsObject(context['jQuery'],['#box']);

  // Using jQuery's .css method
  // Equivalent to this in JavaScript:
  // $('#box').css({
  //   'background-color': 'green',
  //   'height': 200,
  //   'position': 'relative',
  //   'width': 200
  // });
  $box.callMethod('css',[new JsObject.jsify({
      'background-color': 'green',
      'height': 200,
      'position': 'relative',
      'width': 200
    })]);
  
  // Using jQuery's .animate method
  $box.callMethod('animate',[new JsObject.jsify({
      'left': 300
    }), 500, () {
        context.callMethod('alert', ['finished!']);
    }]);
}