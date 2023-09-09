import 'dart:ui';

import 'package:coffee_shop/blocs/coffee/coffee_bloc.dart';
import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/images.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:coffee_shop/pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget(
      {super.key,});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoffeeBloc, CoffeeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                      for (int i = 0; i < CoffeeType.values.length; i++)
                        FilledButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                              CustomColors.purple.withOpacity(0.1),
                            ),
                            side: const MaterialStatePropertyAll(
                              BorderSide(width: 1, color: CustomColors.purple),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                                state.index == i + 1
                                    ? CustomColors.purple
                                    : CustomColors.white),
                            minimumSize:
                                const MaterialStatePropertyAll(Size(0, 30)),
                          ),
                          onPressed: () {
                            switch(CoffeeType.values[i]) {
                              case CoffeeType.tradicional: BlocProvider.of<CoffeeBloc>(context).add(GetTradicional()); break;
                              case CoffeeType.doces: BlocProvider.of<CoffeeBloc>(context).add(GetDoces()); break;
                              case CoffeeType.especiais: BlocProvider.of<CoffeeBloc>(context).add(GetEspeciais()); break;
                            }
                          },
                          child: Text(
                            CoffeeType.values[i].name.toUpperCase(),
                            style: textStyleForRobotoW700(
                                color: state.index == i + 1
                                    ? CustomColors.white
                                    : CustomColors.purple,
                                fontSize: 11),
                          ),
                        ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.list.length,
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
                                      builder: (context) => DetailPage(coffee: state.list[i],),
                                    ),
                                  );
                                },
                                title: Text(
                                  state.list[i].title,
                                  style: textStyleForBaloo_2W700(
                                      color: CustomColors.gray_100,
                                      fontSize: 16),
                                ),
                                leading: Transform.scale(
                                  scale: 2,
                                  child: Transform.translate(
                                    offset: const Offset(0, -30),
                                    child: Image(
                                      height: 90,
                                      width: 90,
                                      image: state.list[i].assetImage,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.list[i].description,
                                      style: textStyleForRobotoW400(
                                          color: CustomColors.gray_100,
                                          fontSize: 12),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          state.list[i].price.toString(),
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
              ),
            );
          },
        );
      },
    );
  }
}
