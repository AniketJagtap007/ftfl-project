import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildFeatureWidget extends StatelessWidget {
  const BuildFeatureWidget({
    super.key,
    required this.title,
    required this.iconPath,
  });
  final String title;
  final String iconPath;
  @override
  Widget build(BuildContext context){
      return Column(
        children: [
          Container(
            width: 80.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(iconPath),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      );
    }}

