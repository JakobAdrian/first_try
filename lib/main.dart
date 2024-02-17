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

abstract class Product {
  String get title;
  String get description;
  double get price;
}

class MyProduct extends Product {
  @override
  final String title;
  @override
  final String description;
  @override
  final double price;

  MyProduct(
      {required this.title, required this.description, required this.price});
}

final List<Product> products = [
  MyProduct(
      title: "Sneakers",
      description: "Schöne Sneakers mit einem modernen Fit",
      price: 169.99),
  MyProduct(
      title: "T-Shirt",
      description: "Ein T-Shirt aus 100% Baumwolle",
      price: 29.99),
  MyProduct(
      title: "Hose",
      description: "Eine gemütliche Hosen mit Elastan",
      price: 59.99),
  MyProduct(
      title: "Hemd",
      description: "Ein Hemd das wirklich gut passt",
      price: 49.99),
  MyProduct(
      title: "Pullover",
      description: "Ein Pullover aus 100% Baumwolle",
      price: 79.99),
];

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
      body: Card(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: Text(products[index].title),
              subtitle: Text(products[index].description),
              trailing: Text("${products[index].price} \$"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondRoute(
                      product: products[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  final Product product;

  const SecondRoute({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final int Index = products.indexOf(product);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Details zu ${products[Index].title}"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              Text(
                products[Index].title,
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                products[Index].description,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${products[Index].price} \$",
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.purple),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: const BorderSide(
                          color: Colors.black, width: 1.0),
                      ),
                    ),
                  ),
                  child: const Text("zutück zum Homescreen"),
                  onPressed: () => Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
