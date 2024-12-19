import 'dart:io';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    this.height = 70,
  });

  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(44),
        child: Image.file(
          File(image),
          height: height,
          width: height,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              height: height,
              width: height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffD9D9D9),
              ),
            );
          },
        ),
      ),
    );
  }
}
