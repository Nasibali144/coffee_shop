import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/gif/lottie.json",
                  height: 200, width: MediaQuery.sizeOf(context).width),
              const SizedBox(
                height: 20,
              ),
              Text(
                Strings.uhuPedidoConfirmado,
                style: textStyleForBaloo_2W700(
                  color: CustomColors.yellowDark,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  Strings.agora,
                  textAlign: TextAlign.center,
                  style: textStyleForRobotoW700(
                    fontSize: 13,
                    color: CustomColors.gray_400,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.sizeOf(context).width / 1.7,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(CustomColors.purpleDark),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    Strings.home.toUpperCase(),
                    style: textStyleForRobotoW700(
                      color: CustomColors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
