import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Crosscounter APp',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Crosscounter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State <MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 67, 134, 221),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 88, 182, 236),
              child: Center(child: Text ('Number Placeholder'))),
            Text('Overengineered Counter'),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 88, 182, 236),
              child: Center(child: Text ('Number Placeholder'))),
          ],
        ),
      ),

      body: Stack(                      // Stack works best, Divider overlaps eachother
        children: [
          Center(
            child: Container(
              height: 2,
              color: Colors.black,
            ),
          ), 
          Center(
            child: Container(
              width: 2,
              color: Colors.black,
            ),
          ), 
          Column(
            mainAxisAlignment: .center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text('Counter 1'),
                    ),
                    Center(
                      child: Text('Counter 2'),
                    ),
                  ],
              )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text('Counter 3'),
                    ),
                    Center(
                      child: Text('Counter 4'),
                    ),
                  ],
                ))
            ]
          )
        
        ]
      ),

    );
  }
}