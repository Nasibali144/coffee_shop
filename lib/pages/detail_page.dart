import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/icons.dart';
import 'package:coffee_shop/constants/images.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:coffee_shop/views/icon_image_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.coffee});
  final CoffeeModel coffee;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color backGroundColor = CustomColors.gray_800;
  Color textColor = CustomColors.gray_100;
  Color borderColor = Colors.transparent;
  int index = 0;
  int counter = 0;
  int andiconar = 0;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CustomImages.backGoundImage,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconImageButton(
                assetImage: CustomIcons.korzinkaWhite,
                onPressed: () {},
                iconSize: 50,
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconImageButton(
              assetImage: CustomIcons.arrowBack,
              onPressed: () {
                Navigator.of(context).pop(CupertinoPageRoute(
                    builder: (context) => const MyHomePage()));
              },
            ),
          ),
        ),
        body: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                FilledButton(
                  style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(CustomColors.gray_300),
                    minimumSize: MaterialStatePropertyAll(Size(0, 30)),
                  ),
                  onPressed: () {},
                  child: Text(
                    widget.coffee.type.name.toUpperCase(),
                    style: textStyleForRobotoW700(
                        color: CustomColors.white, fontSize: 11),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.coffee.title,
                      style: textStyleForBaloo_2W700(
                          color: CustomColors.white, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.end,
                          Strings.rDollar,
                          style: textStyleForBaloo_2W700(
                              color: CustomColors.yellow,
                              fontSize: 14,
                              height: 1.3),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          widget.coffee.price.toString(),
                          style: textStyleForBaloo_2W700(
                              color: CustomColors.yellow,
                              fontSize: 35,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.coffee.description,
                  style: textStyleForRobotoW400(
                      color: CustomColors.white, fontSize: 16),
                ),
                Center(
                  child: Transform.scale(
                    scale: 1.5,
                    child: Transform.translate(
                      offset: const Offset(0, 10),
                      child: Column(
                        children: [
                          Transform.translate(
                            offset: const Offset(0, 60),
                            child: Lottie.asset(
                                "assets/gif/Copy of nDsHN33q3L.json",
                                height: 90),
                          ),
                          const Image(
                            image: CustomImages.coffee,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  Strings.selecione,
                  style: textStyleForRobotoW400(
                    color: (index == 0 || counter == 0)
                        ? CustomColors.redDark
                        : CustomColors.gray_400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ChoosenButton(
                      onTap: () {
                        index = 1;
                        setState(() {});
                      },
                      backgroundColor: index == 1
                          ? CustomColors.white
                          : CustomColors.gray_800,
                      borderColor:
                          index == 1 ? CustomColors.purple : Colors.transparent,
                      textColor: index == 1
                          ? CustomColors.purple
                          : CustomColors.gray_100,
                      text: Strings.ml114,
                    ),
                    ChoosenButton(
                      onTap: () {
                        index = 2;

                        setState(() {});
                      },
                      backgroundColor: index == 2
                          ? CustomColors.white
                          : CustomColors.gray_800,
                      borderColor:
                          index == 2 ? CustomColors.purple : Colors.transparent,
                      textColor: index == 2
                          ? CustomColors.purple
                          : CustomColors.gray_100,
                      text: Strings.ml140,
                    ),
                    ChoosenButton(
                      onTap: () {
                        index = 3;
                        setState(() {});
                      },
                      backgroundColor: index == 3
                          ? CustomColors.white
                          : CustomColors.gray_800,
                      borderColor:
                          index == 3 ? CustomColors.purple : Colors.transparent,
                      textColor: index == 3
                          ? CustomColors.purple
                          : CustomColors.gray_100,
                      text: Strings.ml227,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: CustomColors.gray_700,
                    border: Border.all(width: 1, color: Colors.transparent),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconImageButton(
                        assetImage: CustomIcons.minus,
                        onPressed: () {
                          if (counter > 0) {
                            counter--;
                          } else {
                            return;
                          }
                          setState(() {});
                        },
                      ),
                      Text(counter.toString()),
                      IconImageButton(
                        assetImage: CustomIcons.plus,
                        onPressed: () {
                          counter++;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 55,
                        child: FilledButton(
                          onPressed: (index == 0 || counter == 0)
                              ? null
                              : () {
                                  Navigator.of(context).pop();
                                },
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          child: const Text(Strings.adicionar),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChoosenButton extends StatelessWidget {
  const ChoosenButton({
    super.key,
    required this.onTap,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.text,
  });
  final void Function()? onTap;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(width: 1, color: borderColor)),
        child: Text(
          text,
          style: textStyleForRobotoW400(color: textColor, fontSize: 14),
        ),
      ),
    );
  }
}
