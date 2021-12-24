import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app/screens/homepageprofile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageProfile(),
    );
  }
}
