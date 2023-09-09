import 'dart:ui';

import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/images.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:coffee_shop/pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  DraggableWidget(
      {super.key,
      required this.putIndex,
      required this.putIndex1,
      required this.putIndex2});
  final int putIndex;
  final int putIndex1;
  final int putIndex2;

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      snap: true,
      snapAnimationDuration: const Duration(milliseconds: 200),
      minChildSize: 0.2,
      initialChildSize: 0.2,
      maxChildSize: 0.85,
      builder: (context, scrollController) {
        return Material(
            elevation: 10,
            color: CustomColors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Strings.nossosCafes,
                      style: textStyleForBaloo_2W700(
                          color: CustomColors.gray_100, fontSize: 20),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                          CustomColors.purple.withOpacity(0.1),
                        ),
                        side: const MaterialStatePropertyAll(
                          BorderSide(width: 1, color: CustomColors.purple),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            index == widget.putIndex
                                ? CustomColors.purple
                                : CustomColors.white),
                        minimumSize:
                            const MaterialStatePropertyAll(Size(0, 30)),
                      ),
                      onPressed: () {
                        index = widget.putIndex;
                        setState(() {});
                      },
                      child: Text(
                        coffeeDataBase[0].type.name.toUpperCase(),
                        style: textStyleForRobotoW700(
                            color: index == widget.putIndex
                                ? CustomColors.white
                                : CustomColors.purple,
                            fontSize: 11),
                      ),
                    ),
                    FilledButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                          CustomColors.purple.withOpacity(0.1),
                        ),
                        side: const MaterialStatePropertyAll(
                          BorderSide(width: 1, color: CustomColors.purple),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            index == widget.putIndex1
                                ? CustomColors.purple
                                : CustomColors.white),
                        minimumSize:
                            const MaterialStatePropertyAll(Size(0, 30)),
                      ),
                      onPressed: () {
                        index = widget.putIndex1;
                        setState(() {});
                      },
                      child: Text(
                        coffeeDataBase[7].type.name.toUpperCase(),
                        style: textStyleForRobotoW700(
                            color: index == widget.putIndex1
                                ? CustomColors.white
                                : CustomColors.purple,
                            fontSize: 11),
                      ),
                    ),
                    FilledButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                          CustomColors.purple.withOpacity(0.1),
                        ),
                        side: const MaterialStatePropertyAll(
                          BorderSide(width: 1, color: CustomColors.purple),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            index == widget.putIndex2
                                ? CustomColors.purple
                                : CustomColors.white),
                        minimumSize:
                            const MaterialStatePropertyAll(Size(0, 30)),
                      ),
                      onPressed: () {
                        index = widget.putIndex2;
                        // print(index.toString());
                        // print(
                        //   index == 1
                        //       ? tradicionais.length
                        //       : index == 2
                        //           ? doce.length
                        //           : index == 3
                        //               ? especial.length
                        //               : 0,
                        // );
                        setState(() {});
                      },
                      child: Text(
                        coffeeDataBase[11].type.name.toUpperCase(),
                        style: textStyleForRobotoW700(
                            color: index == widget.putIndex2
                                ? CustomColors.white
                                : CustomColors.purple,
                            fontSize: 11),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: index == 1
                        ? tradicionais.length
                        : index == 2
                            ? doce.length
                            : index == 3
                                ? especial.length
                                : 0,
                    controller: scrollController,
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 130,
                            width: MediaQuery.sizeOf(context).width / 1.2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              border: Border.all(
                                  width: 0.75, color: CustomColors.gray_600),
                              color: CustomColors.gray_900,
                            ),
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    // fullscreenDialog: true,
                                    builder: (context) => DetailPage(
                                      type: index == 1
                                          ? "Tradicionais"
                                          : index == 2
                                              ? "Doce"
                                              : index == 3
                                                  ? "Esprcial"
                                                  : '',
                                      index: i,
                                    ),
                                  ),
                                );
                              },
                              title: Text(
                                // coffeeDataBase[index].title,
                                index == 1
                                    ? tradicionais[i].title
                                    : index == 2
                                        ? doce[i].title
                                        : index == 3
                                            ? especial[i].title
                                            : '',
                                style: textStyleForBaloo_2W700(
                                    color: CustomColors.gray_100, fontSize: 16),
                              ),
                              leading: Transform.scale(
                                scale: 2,
                                child: Transform.translate(
                                  offset: const Offset(0, -30),
                                  child: Image(
                                    height: 90,
                                    width: 90,
                                    image: index == 1
                                        ? tradicionais[i].assetImage
                                        : index == 2
                                            ? doce[i].assetImage
                                            : index == 3
                                                ? especial[i].assetImage
                                                : CustomImages.deliverGuy,
                                    // image: coffeeDataBase[index].assetImage,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    index == 1
                                        ? tradicionais[i].description
                                        : index == 2
                                            ? doce[i].description
                                            : index == 3
                                                ? especial[i].description
                                                : '',

                                    // coffeeDataBase[index].description,
                                    style: textStyleForRobotoW400(
                                        color: CustomColors.gray_100,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                        index == 1
                                            ? tradicionais[i].price.toString()
                                            : index == 2
                                                ? doce[i].price.toString()
                                                : index == 3
                                                    ? especial[i]
                                                        .price
                                                        .toString()
                                                    : '',
                                        // coffeeDataBase[index].price.toString(),
                                        style: textStyleForBaloo_2W700(
                                            color: CustomColors.yellowDark,
                                            fontSize: 14,
                                            height: 1.3),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ));
      },
    );
  }
}
