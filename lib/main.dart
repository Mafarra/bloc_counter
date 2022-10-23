import 'package:bloc/bloc.dart';
import 'package:bloc_counter/counter_observer.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}

// class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter bloc Demo',
  //     theme: ThemeData(
       
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: const MyHomePage(title: 'Flutter bloc Demo Home Page'),
  //   );
  // }
// }


/*
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
    
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }

*/

