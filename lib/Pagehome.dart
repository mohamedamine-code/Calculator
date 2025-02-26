// ignore_for_file: prefer_const_constructors

import 'package:calculator/button.dart';
import 'package:calculator/imgButton.dart';
import 'package:flutter/material.dart';

class Pagehome extends StatelessWidget {
  const Pagehome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> l1 = [
      'AC',
      '+/-',
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
        home: Scaffold(
            body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.black,
        ),
        Container(
          color: Colors.black, // Couleur de fond du GridView
          child: SizedBox(
            height:
                MediaQuery.of(context).size.height * 0.6, // Définit une hauteur
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
                  child: isOperator(l1[index])?
                  
                  Button(ColorButton: const Color.fromARGB(255, 195, 88, 0), textButton: l1[index], textColor: Colors.white)

                  :(l1[index] =='AC')?
                  Button(ColorButton: const Color.fromARGB(255, 167, 3, 3), textButton: l1[index], textColor: const Color.fromARGB(255, 253, 253, 253))

                  :(l1[index]=='asset/img/216118_calculator_icon.png')?

                  
                  
                  Imgbutton(ColorButton: const Color.fromARGB(255, 195, 88, 0) , textButton: l1[index], widthb: 50,heidthb: 50,)
                  

                  :Button(ColorButton: const Color.fromARGB(255, 255, 255, 255), textButton: l1[index], textColor: Colors.black),

                );
              }
            ),
    )
    )
      ]
    )
        ),
    );

  }
}
