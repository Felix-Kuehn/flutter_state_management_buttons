import 'package:flutter/material.dart';

class CounterField extends StatelessWidget{
  final String text;

  const CounterField({
    super.key,
    required this.text,
  })

@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: counter,
                                child: const Icon(Icons.arrow_upward)
                                ),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                              color: Colors.blue,
                              child: const Text('data')),
        
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: counter,
                                child: const Icon(Icons.arrow_downward)
                                ,),
                            )
      ],
    )
  }
}