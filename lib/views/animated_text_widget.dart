import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    super.key,
    required Animation<double> animationScale,
    required AnimationController controllerScale,
  })  : _animationScale = animationScale,
        _controllerScale = controllerScale;

  final Animation<double> _animationScale;
  final AnimationController _controllerScale;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationScale,
      builder: (context, child) {
        return Transform.scale(
          scale: _controllerScale.value,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              Strings.encontre,
              style: textStyleForBaloo_2W700(
                color: CustomColors.white,
                fontSize: 20,
                height: 1.3,
              ),
            ),
          ),
        );
      },
    );
  }
}
