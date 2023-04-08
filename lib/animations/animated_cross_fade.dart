import 'package:flutter/material.dart';

class AnimatedCrossFadeAnimation extends StatefulWidget {
  const AnimatedCrossFadeAnimation({super.key});

  @override
  State<AnimatedCrossFadeAnimation> createState() =>
      _AnimatedCrossFadeAnimationState();
}

class _AnimatedCrossFadeAnimationState
    extends State<AnimatedCrossFadeAnimation> {
       bool _bool = true;
  @override
 
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child:  const Text('Switch')),
        AnimatedCrossFade(
            firstChild: Image.asset(
              'images/greenDVD.png',
              color: Colors.green
            ),
            secondChild: Image.asset(
              'images/greenDVD.png',
              color: Colors.white
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 3))
      ],
    );
  }
}
