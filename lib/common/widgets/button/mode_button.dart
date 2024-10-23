import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModeButton extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final VoidCallback onPressed;

  const ModeButton({
    Key? key,
    required this.image,
    this.height,
    this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 70,
      width: width ?? 70,
      child: Stack(
        children: [
          ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff30393c)
                      .withOpacity(0.5)
                      .withOpacity(0.5), // Light transparent background
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: onPressed, // Use the passed onPressed callback
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.transparent, // Make button background transparent
              shadowColor: Colors.transparent, // Remove shadow
              shape: const CircleBorder(),
            ),
            child: SvgPicture.asset(
              image,
              height: height ?? 40,
              width: width ?? 40,
            ),
          ),
        ],
      ),
    );
  }
}
