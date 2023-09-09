import 'package:coffee_shop/constants/images.dart';
import 'package:flutter/material.dart';

class AnimatedCoffeeImage extends StatelessWidget {
  const AnimatedCoffeeImage({
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
          child: Transform.translate(
            offset: Offset(MediaQuery.sizeOf(context).width / 3, 0),
            child: const Image(
              height: 90,
              width: 90,
              fit: BoxFit.cover,
              image: CustomImages.coffeeNuts,
            ),
          ),
        );
      },
    );
  }
}
