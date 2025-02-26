// ignore_for_file: prefer_const_constructors

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
      '',
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
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
            )),
        Container(
          color: Colors.black, // Couleur de fond du GridView
          child: SizedBox(
            height:
                MediaQuery.of(context).size.height * 0.6, // Définit une hauteur
            child: GridView.builder(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 40,
              ),
              itemCount: l1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: isOperator(l1[index])
                        ? Colors.amber[900]
                        : Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      l1[index],
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    )));
  }
}
