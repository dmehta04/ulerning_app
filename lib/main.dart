

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Welcome(),
    );
  }
}

final appCount = StateProvider<int> ((ref) => 3);


class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

 

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    int count = ref.watch(appCount);
  
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: const Text('Riverpod Counter'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'One',
        onPressed: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>  SecondWidget()));
        },
        tooltip: 'Second Page',
        child: const Icon(Icons.arrow_forward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    FloatingActionButton(
      heroTag: 'Two',
        onPressed: () {
          ref.read(appCount.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ],)
       
      );
  }
}

class SecondWidget extends ConsumerWidget {
   const SecondWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    int count = ref.watch(appCount);
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Second Page App bar'),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
    );
  }
}
