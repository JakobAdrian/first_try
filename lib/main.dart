import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Produkte"),
        centerTitle: false,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Schaue ein schönes Produkt an,',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'indem du auf den FAB drückst',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondRoute())),
        },
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Details zu Hemd"),
        centerTitle: false,
      ),
      body: const Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Text(
              'Hemd',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
             Text(
              'Ein Hemd das wirklich passt',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
             Text(
              'Preis: 49.99 \$',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
        
          
          ],
        ),
      ),
      ),
    );
  }
}
