import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inshorts_clone/screens/home_screen.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.black,
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'News Clone',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
