import 'package:flutter/material.dart';

class IconImageButton extends StatelessWidget {
  const IconImageButton({
    super.key,
    required this.assetImage,
    required this.onPressed,
    this.iconSize = 30,
  });
  final AssetImage assetImage;
  final void Function() onPressed;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image(
        height: iconSize,
        image: assetImage,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
