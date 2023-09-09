import 'package:coffee_shop/blocs/coffee/coffee_bloc.dart';
import 'package:coffee_shop/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CoffeeBloc()),
        // BlocProvider(create: (context) => ()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const IntroPage(),
        // home: HomePage(),
      ),
    );
  }
}
