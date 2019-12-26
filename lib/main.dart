import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_styles/src/pages/basic_page.dart';
import 'package:flutter_styles/src/pages/bottom_bar_page.dart';
import 'package:flutter_styles/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(
    //     statusBarColor: Colors.white
    //   )
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estilos',
      initialRoute: 'bottom',
      routes: {
        'basic': (BuildContext context) => BasicPge(),
        'scroll': (BuildContext context) => ScrollPage(),
        'bottom': (BuildContext context) => BottomPage(),
      },
    );
  }
}

