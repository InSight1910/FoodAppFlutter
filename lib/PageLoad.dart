import 'package:flutter/material.dart';
import 'package:untitled2/colors.dart';

class Button extends StatelessWidget {
  final String title;
  final bool primary;
  const Button({Key? key,required this.title, this.primary = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 95,
            child: TextButton(
                onPressed: () => {},
                child: Ink(
                  width: MediaQuery.of(context).size.width / 1.35,
                  decoration: BoxDecoration(
                    gradient: primary ? LinearGradient(colors: [
                      ColorsApp.gradientInit,
                      ColorsApp.gradientEnd
                    ]) : null,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: primary ? [
                      BoxShadow(
                          color: ColorsApp.colorShadow,
                          offset: const Offset(0, 10),
                          blurRadius: 10)
                    ] : null,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    title,
                    style: TextStyle(
                        color:
                          primary ?
                          ColorsApp.background :
                              ColorsApp.gradientInit
                    ),
                    textAlign: TextAlign.center,
                  ),
                ))),
      ],
    );
  }
}
