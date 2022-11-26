import 'package:flutter/material.dart';

import 'package:login_project/src/common_widget/fade_in_animation/fade_in_animation_model.dart';



class FadeInAnimationWidget extends StatelessWidget {
  const FadeInAnimationWidget({
    Key? key,
    required this.animate,
    required this.durationInMs,
    required this.child,
    this.animatePosition,
  }) : super(key: key);

  final bool animate;
  final int durationInMs;
  final Widget child;
  final AnimationPosition? animatePosition;  //it's nullable bcos if no position parameters was passed only the 
                                              //animatedopacity would run

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: animate ? animatePosition?.topAfter : animatePosition?.topBefore,
        left: animate ? animatePosition?.leftAfter : animatePosition?.leftBefore,
        bottom: animate ? animatePosition?.bottomAfter : animatePosition?.bottomBefore,
        right: animate ? animatePosition?.rightAfter : animatePosition?.rightBefore,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: animate ? 1 : 0,
            child: child,
        ));
  }
}
