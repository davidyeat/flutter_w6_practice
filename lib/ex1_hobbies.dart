import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text("My Hobbies")),
      body: const Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            HobbyCard(hobbyTitle: "Travelling", hobbyIcon: Icons.travel_explore, backgroundColor: Colors.green),
            HobbyCard(hobbyTitle: "Skating", hobbyIcon: Icons.skateboarding, backgroundColor: Colors.blueGrey),
            HobbyCard(hobbyTitle: "Coding", hobbyIcon: Icons.code, backgroundColor: Colors.lightBlue),
            HobbyCard(hobbyTitle: "Listening Music", hobbyIcon: Icons.music_note, backgroundColor: Colors.deepOrange)
          ],
        ),
      ),
    ),
  ));
}

class HobbyCard extends StatelessWidget {
  final String hobbyTitle;
  final IconData hobbyIcon;
  final Color backgroundColor;
  const HobbyCard({
    super.key,
    required this.hobbyTitle,
    required this.hobbyIcon,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max, // Optional: A row has by default
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(hobbyIcon, color: Colors.white, size: 24)),
          Text(hobbyTitle, style: const TextStyle(color: Colors.white, fontSize: 24))
        ],
      ),
    );
  }
}
