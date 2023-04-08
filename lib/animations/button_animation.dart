import 'package:flutter/material.dart';

class ButtonAnimation extends StatefulWidget {
  const ButtonAnimation({super.key});

  @override
  State<ButtonAnimation> createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isClicked ? 70 : 200,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    //Future.delayed(Duration(seconds:10));
                    isClicked = !isClicked;
                  });
                },
                style: ElevatedButton.styleFrom(
                    shape: isClicked
                        ? const CircleBorder()
                        : RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                child: isClicked
                    ? const SizedBox(
                        height: 20,
                        child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            )),
                      )
                    : const Text(
                        'Submit',
                      ))),
      ),
    );
  }
}
