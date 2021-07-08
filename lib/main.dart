import 'package:demoapp/bottompage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Color(0xff0c0f14),
  statusBarIconBrightness: Brightness.light
));
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor: Color(0xff0c0f14),
  //   statusBarColor: Color(0xff0c0f14),
  //   statusBarIconBrightness: Brightness.light
  // ));  
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottompage(),
    );
  }
}
