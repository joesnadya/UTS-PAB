import 'package:flutter/material.dart';

class Result extends StatelessWidget
{
   final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;

  const Result(
      {super.key, required this.textColor,
      required this.resultText,
      required this.bmi,
      required this.advise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "HASIL BMI",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
                    bmi,
                    style: const TextStyle(
                      fontSize: 25.0,
                fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Normal BMI:',
                    style: TextStyle(
                      fontSize: 25.0,
                fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(
                      fontSize: 25.0,
                fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                fontWeight: FontWeight.bold,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}