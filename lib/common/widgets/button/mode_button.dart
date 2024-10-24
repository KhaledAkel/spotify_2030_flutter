import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModeButton extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final bool isSelected; // Property to track selection

  const ModeButton({
    Key? key,
    required this.image,
    this.height,
    this.width,
    required this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 70,
      width: width ?? 70,
      child: Stack(
        children: [
          // Background circle with blur effect and border
          ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff30393c)
                      .withOpacity(0.5), // Light transparent background
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? Theme.of(context)
                            .primaryColor // Use primary color if selected
                        : Colors.transparent, // Transparent if not selected
                    width: 3, // Thickness of the border
                  ),
                ),
              ),
            ),
          ),
          // Elevated button on top of the background
          ElevatedButton(
            onPressed: onPressed, // Use the passed onPressed callback
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.transparent, // Make button background transparent
              shadowColor: Colors.transparent, // Remove shadow
              shape: const CircleBorder(), // Keep circular shape
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
