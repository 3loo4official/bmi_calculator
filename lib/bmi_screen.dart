
import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 170;
  double age = 25;
  double weight = 70;
  bool isMale = true;
  BMIResult result = const BMIResult();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              isMale = true;
                            });
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isMale ? Colors.blue : Colors.grey[400]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage(
                                    'assets/images/male.png',
                                  ),
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isMale ? Colors.grey[400] : Colors.blue,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage(
                                    'assets/images/female.png',
                                  ),
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400],
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'CM',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                          value: (height),
                          min: 40.0,
                          max: 220.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                            // ignore: avoid_print
                            print(value.round());
                          })
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight--',
                                  child: const Icon(Icons.remove),
                                  mini: true,
                                ),
                                const SizedBox(width: 5,),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight++',
                                  child: const Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age--',
                                  child: const Icon(Icons.remove),
                                  mini: true,
                                ),
                                const SizedBox(width: 5,),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age++',
                                  child: const Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 30,
                color: Colors.blue,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        double result = weight / pow(height / 100, 2);
                        // ignore: avoid_print
                        print(result.round());
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BMIResult(age: age,isMale: isMale,result: result,weight: weight,)));
                      });
                    },
                    icon: const Text(
                      'calculate',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
