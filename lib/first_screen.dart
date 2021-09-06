import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool toglle = true;
  double hight = 180;
  int age = 28;
  int weight = 50;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(11, 15, 31, 1),
        elevation: 2,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Color(0xFFA7A8B0)),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromRGBO(11, 15, 31, 1),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          toglle = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: toglle
                                ? Colors.blueAccent
                                : Color.fromRGBO(17, 19, 36, 1.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: toglle ? Colors.white : Colors.grey,
                              size: 80,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: toglle ? Colors.white : Colors.grey,
                                  fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          toglle = !toglle;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                toglle ? Color(0xff111324) : Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: toglle ? Colors.grey : Colors.white,
                              size: 80,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  color: toglle ? Colors.grey : Colors.white,
                                  fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff111324),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${hight.round()}',
                            style: TextStyle(fontSize: 70, color: Colors.white),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(fontSize: 25, color: Colors.grey),
                          )
                        ],
                      ),
                      Slider(
                        value: hight,
                        max: 220,
                        min: 140,
                        onChanged: (val) {
                          setState(() {
                            hight = val;
                          });
                        },
                        inactiveColor: Colors.grey,
                        activeColor: Colors.blueAccent,
                      )
                    ],
                  )),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(17, 19, 36, 1.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 30),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 70,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.blueAccent,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                child: Icon(Icons.add),
                                backgroundColor: Colors.blueAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(17, 19, 36, 1.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 30),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 70,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                child: Icon(Icons.remove),
                                backgroundColor: Colors.blueAccent,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                child: Icon(Icons.add),
                                backgroundColor: Colors.blueAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                color: Colors.blueAccent,
                width: double.infinity,
                child: MaterialButton(
                    onPressed: () {
                      double reuslt = weight / pow(hight / 100, 2);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiResult(
                                    result: reuslt.round(),
                                    toglle: toglle ? 'Male' : 'Female',
                                    age: age,
                                  )));
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
          ],
        ),
      ),
    );
  }
}
