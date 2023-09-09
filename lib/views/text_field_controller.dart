import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/icons.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 60,
        child: TextField(
          // cursorHeight: 30,
          controller: controller,
          style:
              textStyleForRobotoW400(color: CustomColors.white, fontSize: 16),
          decoration: InputDecoration(
              prefixIcon: Transform.scale(
                scale: 0.5,
                child: const Image(
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                    image: CustomIcons.searchIcon),
              ),
              hintText: Strings.pesquisar,
              hintStyle: textStyleForRobotoW400(
                  color: CustomColors.gray_400, fontSize: 16),
              filled: true,
              fillColor: CustomColors.gray_200,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
