// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator/button.dart';
import 'package:calculator/imgButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Pagehome extends StatefulWidget {
  const Pagehome({super.key});

  @override
  State<Pagehome> createState() => _PagehomeState();
}

class _PagehomeState extends State<Pagehome> {
  @override
  String operation = '';
  String resulat = '';

  Widget build(BuildContext context) {
    List<String> l1 = [
      'C',
      'DEL',
      '%',
      '/',
      '7',
      '8',
      '9',
      'x',
      '4',
      '5',
      '6',
      '-',
      '1',
      '2',
      '3',
      '+',
      'asset/img/216118_calculator_icon.png',
      '0',
      ',',
      '=',
    ];

    bool isOperator(String ch) {
      if (ch == "(" ||
          ch == ")" ||
          ch == "=" ||
          ch == "/" ||
          ch == "x" ||
          ch == "-" ||
          ch == "+") {
        return true;
      }
      return false;
    }

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3343,
            // color: const Color.fromARGB(255, 248, 248, 248),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        operation,
                        style: TextStyle(fontSize: 25),
                      )),
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        resulat,
                        style: TextStyle(fontSize: 35),
                      )),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.black, // Couleur de fond du GridView
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.6, // Définit une hauteur
                child: GridView.builder(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 25,
                    ),
                    itemCount: l1.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        child: (l1[index] == '=')
                            ? Button(
                                ColorButton: Color.fromARGB(255, 195, 88, 0),
                                textButton: l1[index],
                                textColor: Colors.white,
                                butttonPrssed: () {
                                  eaqual();
                                },
                              )
                            : isOperator(l1[index])
                                ? Button(
                                    butttonPrssed: () {
                                      setState(() {
                                        operation += l1[index];
                                      });
                                    },
                                    ColorButton:
                                        const Color.fromARGB(255, 195, 88, 0),
                                    textButton: l1[index],
                                    textColor: Colors.white)
                                : (l1[index] == 'DEL')
                                    ? Button(
                                        butttonPrssed: () {
                                          setState(() {
                                            if (operation != '')
                                              operation = operation.substring(
                                                  0, operation.length - 1);
                                            print(operation.length);
                                          });
                                        },
                                        ColorButton: const Color.fromARGB(
                                            255, 167, 3, 3),
                                        textButton: l1[index],
                                        textColor: const Color.fromARGB(
                                            255, 253, 253, 253))
                                    : (l1[index] ==
                                            'asset/img/216118_calculator_icon.png')
                                        ? Imgbutton(
                                            ColorButton: Colors.white,
                                            textButton: l1[index],
                                            widthb: 50,
                                            heidthb: 50,
                                          )
                                        : (l1[index] == 'C')
                                            ? Button(
                                                ColorButton:
                                                    const Color.fromARGB(
                                                        255, 9, 164, 14),
                                                textButton: l1[index],
                                                textColor: Colors.white,
                                                butttonPrssed: () {
                                                  setState(() {
                                                    operation = "";
                                                  });
                                                },
                                              )
                                            : Button(
                                                butttonPrssed: () {
                                                  setState(() {
                                                    operation += l1[index];
                                                  });
                                                },
                                                ColorButton:
                                                    const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                textButton: l1[index],
                                                textColor: Colors.black),
                      );
                    }),
              ))
        ])),
      ),
    );
  }

  void eaqual() {
    operation = operation.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(operation);
    ContextModel cm = ContextModel();
    
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      resulat = eval.toString();
    });
  }
}
