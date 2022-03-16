import 'package:flutter/material.dart';
import 'package:tourguide/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async {
    await Future.delayed(Duration(seconds: 3),(){});
      Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder: (context) =>Home()
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network('https://thirdeyetraveller.com/wp-content/uploads/IMG_3619-2-689x861.jpg',
        fit: BoxFit.fitHeight,),
      ),
    );
  }
}
