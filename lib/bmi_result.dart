import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final String toglle;
  final int result;
  final int age;

  BmiResult({required this.toglle, required this.age, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(11, 15, 31, 1),
        title: Text('BMI Result', style: TextStyle(color: Color(0xFFA7A8B0))),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(11, 15, 31, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : $toglle',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text('Result : $result',
                style: TextStyle(color: Colors.white, fontSize: 40)),
            Text('Age : $age',
                style: TextStyle(color: Colors.white, fontSize: 40)),
          ],
        ),
      ),
    );
  }
}
