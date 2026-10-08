import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int number = 0;
  int counter (){
    number++;
    return number;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 67, 134, 221),
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 88, 182, 236),
              child: Center(child: Text ('Number'))),
            Expanded(
              child:Center(
                child: Text('Overengineered Counter'))),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 88, 182, 236),
              child: Center(child: Text ('Number'))),
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
                    Expanded(
                      child: Center(
                        child: Row(
                            
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
                          ]
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text('Counter 2'),
                      ),
                    ),
                  ],
              )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text('Counter 3'),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text('Counter 4'),
                      ),
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