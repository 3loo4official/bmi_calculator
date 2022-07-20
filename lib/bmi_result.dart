// ignore_for_file: must_be_immutable

import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final bool isMale;
  final double age;
  final double weight;
  final double result;
  String range;


   BMIResult(
      {Key? key,
      required this.age,
      required this.isMale,
      required this.weight,
      required this.result,
       required this.range})
      : super(key: key);

      void bmiRange()
     {
      if(result < 18.5)
      {
        range = 'your are under weight.';

      }else if(result >= 18.5 && result <= 22.9 ) 
      {
          range ='your range is normal.';

      }else if(result >= 23 && result <= 24.9 ) 
      {
          range = 'your range is over weight.';

      }else if(result >= 25 && result <= 29.9 ) 
      {
          range = 'your have pre-Obese. ';
      }else
      {
        range = 'you have Obese.';
      }

    }
    
   
  @override
  Widget build(BuildContext context) {
    bmiRange();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BMICalculator()));
          },
        ),
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text(
            'Gender: $isMale',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(height: 10,),
          Text(
            'Weight: $weight kg',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(height: 10,),
          Text(
            'Age: $age years old',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(height: 10,),
          Text(
            'BMI Result: ${result.round()}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
           Text(
            'BMI Range: $range',textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ]),
      ),
    );
  }
}
