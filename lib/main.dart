import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/screens/bottomNavBar/bottom_navbar_view.dart';
import 'package:test2/screens/splash.dart';
import 'package:test2/utils/cons_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: mainColor,
        textSelectionColor: green,
        cursorColor: green,
        accentColor: green,
        colorScheme: ColorScheme(
            primary: mainColor,
            primaryVariant: mainColor,
            secondary: mainColor,
            secondaryVariant: mainColor,
            surface: Colors.white,
            background: mainColor,
            error: mainColor,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: mainBlack,
            onBackground: Colors.white,
            onError: Colors.white,
            brightness: Brightness.light),
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    return BottomNavbarView();
  }
}
