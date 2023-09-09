import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/icons.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:coffee_shop/pages/shop_page.dart';
import 'package:coffee_shop/views/icon_image_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimetedAppBarWidget extends StatelessWidget {
  const AnimetedAppBarWidget({
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
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconImageButton(
                        assetImage: CustomIcons.location,
                        onPressed: () {},
                      ),
                      Text(
                        Strings.porto,
                        style: textStyleForRobotoW400(
                            color: CustomColors.white, fontSize: 14),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: IconImageButton(
                      assetImage: CustomIcons.cartKorzinka,
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const ShopPage(),
                          ),
                        );
                      },
                      iconSize: 38,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
