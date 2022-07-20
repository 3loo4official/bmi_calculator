
import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {

  final bool? isMale; 
  final double? age;
  final double? weight;
  final double? result;

  

  const BMIResult({ Key? key, this.isMale, this.age, this.weight, this.result }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new), onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const BMICalculator()));
        }
        ,) ,
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Text('Gender: $isMale',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text('Weight: $weight', style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text('Age: $age',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ]
          ),
      ),
    );
  }
}
