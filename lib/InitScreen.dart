import 'package:flutter/material.dart';

void main() {
  runApp(const InitScreen());
}

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/images/logo.png', cacheWidth: 100,),
    );
  }

}