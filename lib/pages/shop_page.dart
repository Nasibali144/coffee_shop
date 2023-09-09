import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/icons.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:coffee_shop/pages/delivery_page.dart';
import 'package:coffee_shop/views/icon_image_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double total = 9.9;
    // List<double> total = [];
    // int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.carrinho,
          style: textStyleForBaloo_2W700(
              color: CustomColors.gray_100, fontSize: 20),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  // total = double.parse(value[index].coffePrice);
                  // counter = value[index].counter!;
                  return SizedBox(
                    height: 150,
                    child: ListTile(
                      onTap: () {},
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            tradicionais[index].title,
                            style: textStyleForRobotoW400(
                                color: CustomColors.gray_200, fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                textAlign: TextAlign.end,
                                Strings.rDollar,
                                style: textStyleForBaloo_2W700(
                                    color: CustomColors.gray_100,
                                    fontSize: 12,
                                    height: 1.3),
                              ),
                              Text(
                                textAlign: TextAlign.center,

                                tradicionais[index].price.toString(),
                                // (value[index].total! * counter)
                                // .toString(),
                                style: textStyleForBaloo_2W700(
                                    color: CustomColors.gray_100,
                                    fontSize: 16,
                                    height: 1.3),
                              ),
                            ],
                          ),
                        ],
                      ),
                      leading: Transform.scale(
                        scale: 1.5,
                        child: Transform.translate(
                          offset: const Offset(0, -30),
                          child: Image(
                            height: 90,
                            width: 90,
                            image: tradicionais[index].assetImage,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      subtitle: SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.ml114,
                              style: textStyleForRobotoW400(
                                  color: CustomColors.gray_400, fontSize: 14),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: CustomColors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      border: Border.all(
                                          width: 1,
                                          color: CustomColors.gray_500)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconImageButton(
                                        assetImage: CustomIcons.minus,
                                        onPressed: () {},
                                      ),
                                      const Text('1'),
                                      IconImageButton(
                                        assetImage: CustomIcons.plus,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                IconImageButton(
                                  iconSize: 50,
                                  assetImage: CustomIcons.deleteIcon,
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: CustomColors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: CustomColors.gray_700,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.valorTotal,
                          style: textStyleForRobotoW400(
                              color: CustomColors.gray_100, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              textAlign: TextAlign.end,
                              Strings.rDollar,
                              style: textStyleForBaloo_2W700(
                                  color: CustomColors.gray_100,
                                  fontSize: 15,
                                  height: 1.3),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              // (total * counter).toString(),

                              // total
                              //     .reduce((value, element) =>
                              //         value + element)
                              //     .toString(),
                              // (value.first.total! * counter)
                              //     .toStringAsFixed(2),
                              Strings.prise,
                              // AppTotal.total.value.total.toString(),
                              // ,
                              style: textStyleForBaloo_2W700(
                                  color: CustomColors.gray_100,
                                  fontSize: 20,
                                  height: 1.3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // llpp.xyz/v/vod.js
                    // jac.red
                    // Jackett
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 60,
                      width: MediaQuery.sizeOf(context).width,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => const DeliveryPage()));
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(CustomColors.yellowDark),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          Strings.confirmarPedido.toUpperCase(),
                          style: textStyleForBaloo_2W700(
                            color: CustomColors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
