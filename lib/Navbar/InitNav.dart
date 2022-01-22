import 'package:flutter/material.dart';
import 'package:untitled2/colors.dart';

class InitNav extends StatelessWidget {
  const InitNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

        children: [
          const SizedBox(
            width: 140,
          ),
          Image.asset(
            'assets/images/logo.png',
            cacheWidth: 50,
          ),
          Expanded(child: Container()),
          TextButton(
            onPressed: () => {},
            child: const Text(
              'Skip',
              style: TextStyle(
                color: ColorsApp.gradientInit,
                decoration: TextDecoration.none,
                fontSize: 16),
            )
          ),
        ],
      );
  }
}
