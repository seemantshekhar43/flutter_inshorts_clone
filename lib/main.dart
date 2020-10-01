import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inshorts_clone/screens/home_screen.dart';

// main function
void main(){

  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

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
