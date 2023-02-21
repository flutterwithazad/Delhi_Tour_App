import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/animations/coming.json",width: MediaQuery.of(context).size.width *0.8,height: MediaQuery.of(context).size.height *0.8,repeat: true),),
    );
  }
}
