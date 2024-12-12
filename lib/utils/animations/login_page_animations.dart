// import 'package:flutter/material.dart';

// class EnterAn{

//   EnterAnimation(this._controller){
//     circleSize = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack));
//   }
//    Animation _controller;

//    Animation<double> circleSize;
// }


import 'package:flutter/material.dart';

class EnterAnimation {
  EnterAnimation(AnimationController controller) {
    _controller = controller;
    circleSize = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack),
    );
  }

  late AnimationController _controller;
  late Animation<double> circleSize;
}