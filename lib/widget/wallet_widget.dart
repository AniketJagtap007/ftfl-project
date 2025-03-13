import 'package:flutter/material.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({
    super.key,
    required this.columnText1,
    required this.columText2,
    required this.num1,
    required this.num2,
    required this.color,
  });

  final String columnText1;
  final String columText2;
  final String num1;
  final String num2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.blueGrey.shade100],
              // Define gradient colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                columnText1,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),

              Text(
                columText2,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              num1,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(num2, style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
