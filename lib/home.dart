import 'dart:math';

import 'package:bmitracker/result.dart';
import 'package:flutter/material.dart';
import 'package:bmitracker/logic.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  bool isMale = true;
  int height = 180;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 15, 30, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 15, 30, 1.0),
        title: const Text(
          "BMI Calculator",
        ),
      ),
      body: Column(
        children: [

          /*Laki-laki atau Perempuan*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale? Colors.blue : const Color.fromARGB(255, 16, 19, 35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.male,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 15.0,),
                            Text(
                              "LAKI-LAKI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: !isMale? Colors.pink : const Color.fromARGB(255, 16, 19, 35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.female,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 15.0,),
                            Text(
                              "PEREMPUAN",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Height Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: const Color.fromARGB(255, 16, 19, 35),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TINGGI",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(width: 5.0,),
                          const Text(
                            "CM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 220,
                        onChanged:(double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        activeColor: const Color.fromARGB(255, 160, 161, 173),
                        inactiveColor: const Color.fromARGB(255, 88, 89, 104),
                        thumbColor: const Color.fromARGB(255, 230, 20, 73),
                      ),
                    ]
                ),
              ),
            ),
          ),

          /*Weight and Age Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: const Color.fromARGB(255, 16, 19, 35),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BERAT BADAN",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'Weight-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'Weight+',
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: const Color.fromARGB(255, 16, 19, 35),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UMUR",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),

          /*Calculate Button Section*/
          Container (
            width: double.infinity,
            height: 75.0,
            color: const Color.fromARGB(255, 230, 20, 73),
            child: MaterialButton(
              onPressed: (){
                Calculate calc = Calculate(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                       bmi: calc.result(),
                    resultText: calc.getText(),
                    advise: calc.getAdvise(),
                    textColor: calc.getTextColor(),
                    ),
                  )
                );
              },
              child: const Text(
                "HITUNG BMI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
                
              ),
              
            ),
            
          )
        ],
      ),
    );
  }
}