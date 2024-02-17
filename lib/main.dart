import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Produkte"),
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
        
        child: const Icon(Icons.accessibility_new),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Details zu Hemd"),
        centerTitle: false,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 30),
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
      floatingActionButton: ElevatedButton(
        
        style:
            ButtonStyle (backgroundColor:  
            MaterialStateProperty.all(Colors.red),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.blue),
        
        ),
        child: const Icon(Icons.home),
        onPressed: () => Navigator.pop(
          context,
          MaterialPageRoute(
            builder: (context)=> const MyHomePage(),
          ),
        ),
      ),
    );
  }
}
