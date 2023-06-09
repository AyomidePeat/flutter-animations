import 'package:flutter/material.dart';

class AnimatedContainerAnimation extends StatefulWidget {
  const AnimatedContainerAnimation({super.key});

  @override
  State<AnimatedContainerAnimation> createState() =>
      _AnimatedContainerAnimationState();
}

class _AnimatedContainerAnimationState
    extends State<AnimatedContainerAnimation> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
             selected = !selected;
          });
         
        },
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
          width: selected? 200 : 100 ,
          height: selected? 100 : 200,
          color: selected ? Colors.blueGrey : Colors.white,
           alignment: selected?Alignment.center:AlignmentDirectional.topCenter, curve: Curves.fastOutSlowIn,
           child:  const FlutterLogo(size : 80) ),
        ));
  }
}
