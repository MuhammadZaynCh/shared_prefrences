import 'dart:async';

import 'package:chapter_9_shared_prefrences/home_screen.dart';
import 'package:chapter_9_shared_prefrences/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isLogin();
  }

  void isLogin()async{
    SharedPreferences sp = await SharedPreferences.getInstance();

    bool isLogin = sp.getBool('isLogin') ?? false;

    if(isLogin){
      Timer(const Duration(seconds: 2), () {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => HomeScreen())
        );
      });
    }
    else{
      Timer(const Duration(seconds: 2), () {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => RegisterScreen())
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : Scaffold(
        body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage(
              'https://images.pexels.com/photos/2925304/pexels-photo-2925304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),

      ),
    );
  }
}