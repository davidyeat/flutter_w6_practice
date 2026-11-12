import 'package:flutter/material.dart';

const String dartImage = 'assets/ex3/dart.png';
const String flutterImage = 'assets/ex3/flutter.png';
const String firebaseImage = 'assets/ex3/firebase.png';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.

enum Product {
  dart(
      title: "Dart", image: dartImage, description: "the best object language"),
  flutter(
      title: "Flutter",
      image: flutterImage,
      description: "the best mobile widget library"),
  firebase(
      title: "Firebase",
      image: firebaseImage,
      description: "the best cloud database");

  const Product(
      {required this.title, required this.description, required this.image});

  final String title;
  final String description;
  final String image;
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Products")),
        body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blueAccent,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ProductCard(product: Product.dart),
              ProductCard(product: Product.flutter),
              ProductCard(product: Product.firebase),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Image.asset(
              product.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            Text(product.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Text(product.description)
          ],
        ),
      ),
    );
  }
}
