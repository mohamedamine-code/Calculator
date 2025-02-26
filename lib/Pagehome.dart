// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pagehome extends StatelessWidget {
  const Pagehome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> l1 = [
      '(',
      ')',
      '%',
      'AC',
      '7',
      '8',
      '9',
      '/',
      '4',
      '5',
      '6',
      'x',
      '1',
      '2',
      '3',
      '-',
      '0',
      '.',
      '=',
      '+',
    ];
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
            )),
        Expanded(
          flex: 2,
          child: GridView.builder(
            padding: EdgeInsets.only(
              top: 30,
            ),
            itemCount: l1.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        l1[index],
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
              );
            },
          ),
        ),
      ],
    )));
  }
}
