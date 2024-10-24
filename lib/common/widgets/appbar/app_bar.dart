import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color:
                Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black,
            size: 15,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          splashColor: Colors.transparent, // No ripple effect
          highlightColor: Colors.transparent, // No highlight effect
        ),
      ),
    );
  }
}
