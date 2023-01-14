import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/store.dart';
import 'package:flutter_application_1/Pages/cart_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Pages/login_StatelessWidget.dart';
import 'Pages/login_StatefullWidget.dart';
import 'Pages/homepage.dart';

void main() {
  runApp(VxState(store: MyStore(), child: Myapp()));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => homepage(), //Homepage_befor_velocity_x(),
        MyRoutes.homeRoute: (context) => login_StatefullWidget(),
        MyRoutes.loginRoutes_2: (context) => homepage(),
        MyRoutes.loginRoutes_1: (context) => login_StatelessWidget(),
        MyRoutes.CartPage: (context) => CartPage(),
      },
    );
  }
}
