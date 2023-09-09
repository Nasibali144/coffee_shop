import 'package:coffee_shop/blocs/coffee/coffee_bloc.dart';
import 'package:coffee_shop/constants/fonts.dart';
import 'package:coffee_shop/constants/icons.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _animation;

  late AnimationController _controllerScale;
  late Animation<double> _animationScale;

  late AnimationController _controllerScale1;
  late Animation<double> _animationScale1;

  late AnimationController _controllerBorderRadius;
  late Animation<BorderRadius?> _animationBorderRadius;

  @override
  void initState() {
    super.initState();
    _controllerBorderRadius =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationBorderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(360.0),
      end: BorderRadius.circular(0.0),
    ).animate(
      CurvedAnimation(
        parent: _controllerBorderRadius,
        curve: Curves.easeInQuart,
      ),
    );
    _controllerBorderRadius.forward();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
    _animation =
        Tween<Alignment>(begin: Alignment.centerLeft, end: Alignment.center)
            .animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInQuart,
      ),
    );
    _controller.forward();

    _controllerScale1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationScale1 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controllerScale1,
        curve: Curves.easeInQuart,
      ),
    );
    _controllerScale1.forward();

    _controllerScale =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animationScale = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controllerScale,
        curve: Curves.easeInQuart,
      ),
    );
    _controllerScale.forward();

    navigate();
  }

  void navigate() async {
    await Future.delayed(const Duration(seconds: 3));
    // Navigator.of(context).pushAndRemoveUntil(_createRoute(), (route) => false);
    if (mounted) Navigator.of(context).pushReplacement(_createRoute());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<CoffeeBloc>()..add(GetInitial())..add(GetTradicional());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.purpleDark,
      body: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _animationScale1,
              builder: (context, child) {
                return AnimatedBuilder(
                  animation: _animationBorderRadius,
                  builder: (context, child) {
                    return Container(
                      height: MediaQuery.sizeOf(context).height *
                          _animationScale1.value,
                      width: MediaQuery.sizeOf(context).width *
                          _animationScale1.value,
                      decoration: BoxDecoration(
                        borderRadius: _animationBorderRadius.value,
                        color: CustomColors.purple,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Center(
              child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return SizedBox(
                width: MediaQuery.sizeOf(context).width * _controller.value / 2,
                child: Center(
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      height: 100,
                      width: 60,
                      child: Image(image: CustomIcons.coffeeIcon),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    FadeTransition(
                      opacity: _animationScale,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(Strings.coffee,
                              style: textStyleForRobotoW700(
                                  color: Colors.white,
                                  fontSize: 35,
                                  height: 1)),
                          Text(
                            Strings.delivery,
                            style: textStyleForRoboto(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 30,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              );
            },
          )),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MyHomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset(0, 0);
      const curve = Curves.linear;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
