import 'package:flutter/material.dart';

class AnimatedAlignAnimation extends StatefulWidget {
  const AnimatedAlignAnimation({super.key});

  @override
  State<AnimatedAlignAnimation> createState() => _AnimatedAlignAnimationState();
}

class _AnimatedAlignAnimationState extends State<AnimatedAlignAnimation> {
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
          child: Container(
              width: double.infinity,
              height: 250.0,
              color: Colors.blueGrey,
              child: AnimatedAlign(
                alignment:selected? Alignment.topRight: Alignment.bottomLeft,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/greenDVD.png',
                      color: Colors.white,
                    )),
              ))),
    );
  }
}
