import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CommonButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: commonButtonStyle,
      child: Text(text),
    );
  }
}

final ButtonStyle commonButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: Colors.purple,
  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
);
