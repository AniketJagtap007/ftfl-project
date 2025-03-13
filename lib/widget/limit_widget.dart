import 'package:flutter/material.dart';

class LimitWidget extends StatelessWidget {
  const LimitWidget({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Colors.black12, width: 2.0),
      ),
      child: Text(text, style: TextStyle(fontSize: 12, color: Colors.blueGrey)),
    );
  }
}
