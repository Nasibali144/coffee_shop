import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:flutter/material.dart';

class OnlyThreeWidget extends StatelessWidget {
  const OnlyThreeWidget({
    Key? key,
    required this.assetImage,
    required this.title,
    required this.name,
    required this.explain,
    required this.prise,
    // this.scale = 1.3,
    required this.scale,
    required this.assetScale,
  }) : super(key: key);

  final String title;
  final String name;
  final String explain;
  final String prise;
  final double assetScale;
  // final double scale;
  final double scale;

  final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: CustomColors.gray_700,
            width: 1,
          ),
          color: CustomColors.gray_900,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.scale(
                  scale: assetScale,
                  child: Transform.translate(
                    offset: const Offset(0, -20),
                    child: Image(
                      height: 80,
                      width: 80,
                      image: assetImage,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: ElevetedButtonWidget(
                    title: title.toUpperCase(),
                    onPressed: null,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: Text(
                    name,
                    style: textStyleForBaloo_2W700(
                        color: CustomColors.gray_100, fontSize: 20),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: Text(
                    textAlign: TextAlign.center,
                    explain,
                    style: textStyleForRobotoW400(
                        color: CustomColors.gray_400, fontSize: 9, height: 1.3),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.end,
                        Strings.rDollar,
                        style: textStyleForRobotoW400(
                            color: CustomColors.yellowDark,
                            fontSize: 10,
                            height: 1.3),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        prise,
                        style: textStyleForBaloo_2W700(
                            color: CustomColors.yellowDark,
                            fontSize: 14,
                            height: 1.3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ElevetedButtonWidget extends StatelessWidget {
  ElevetedButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(CustomColors.purple.withOpacity(0.1)),
        minimumSize: const MaterialStatePropertyAll(Size.fromHeight(30)),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyleForRobotoW700(color: CustomColors.purple, fontSize: 10),
      ),
    );
  }
}
