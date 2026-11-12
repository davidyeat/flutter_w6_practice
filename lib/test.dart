import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body:
            // YOUR CODE
            Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 100, height: 40, color: Colors.white),
                        const SizedBox(height: 20),
                        Container(width: 100, height: 40, color: Colors.white),
                        const SizedBox(height: 20),
                        Container(width: 100, height: 40, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(height: 50, width: 80, color: Colors.yellow),
                        Container(height: 50, width: 80, color: Colors.yellow),
                        Container(height: 50, width: 80, color: Colors.yellow),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
