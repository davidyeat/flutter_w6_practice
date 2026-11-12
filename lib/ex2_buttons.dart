import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.

enum ButtonType {
  primary(buttonColor: Colors.blue),
  secondary(buttonColor: Colors.green),
  disable(buttonColor: Colors.grey);

  const ButtonType({required this.buttonColor});

  final Color buttonColor;
}

enum IconPosition { left, right }

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            CustomButton(label: "Submit", buttonIcon: Icons.check),
            CustomButton(
                label: "Time",
                buttonIcon: Icons.access_time,
                iconPosition: IconPosition.right,
                buttonType: ButtonType.secondary),
            CustomButton(
                label: "Account",
                buttonIcon: Icons.account_tree_outlined,
                iconPosition: IconPosition.right,
                buttonType: ButtonType.disable),
          ],
        ),
      ),
    ),
  ));
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData buttonIcon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.buttonIcon,
    this.iconPosition = IconPosition.left,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(
      buttonIcon,
      size: 16,
      color: Colors.white,
    );

    final contentWidget =
        Text(label, style: const TextStyle(fontSize: 16, color: Colors.white));

    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: buttonType.buttonColor,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: iconPosition == IconPosition.left
                ? [iconWidget, const SizedBox(width: 10), contentWidget]
                : [contentWidget, const SizedBox(width: 10), iconWidget]));
  }
}
