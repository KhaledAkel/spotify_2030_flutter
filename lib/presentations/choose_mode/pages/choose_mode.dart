import 'package:flutter/material.dart';
import 'package:spotify_2030_flutter/common/widgets/button/basic_app_button.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_2030_flutter/common/widgets/button/mode_button.dart';
import 'package:spotify_2030_flutter/presentations/auth/pages/signup_or_signin.dart';

class ChooseModePage extends StatefulWidget {
  final Function(bool) onToggleTheme;

  const ChooseModePage({Key? key, required this.onToggleTheme})
      : super(key: key);

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
  String selectedMode = 'dark'; // Default selected mode

  void _selectMode(String mode) {
    setState(() {
      selectedMode = mode; // Update selected mode
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.cover2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            color: Colors.black.withOpacity(0.15),
            child: Column(
              children: [
                // Logo at the top
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                // Mode buttons in a row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ModeButton(
                          image: AppVectors.lightModeIcon,
                          height: 80,
                          width: 80,
                          isSelected: selectedMode ==
                              'light', // Check if light mode is selected
                          onPressed: () {
                            _selectMode('light'); // Select light mode
                            widget.onToggleTheme(true); // Toggle theme
                          },
                        ),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(width: 20), // Space between the buttons
                    Column(
                      children: [
                        ModeButton(
                          image: AppVectors.darkModeIcon,
                          height: 80,
                          width: 80,
                          isSelected: selectedMode ==
                              'dark', // Check if dark mode is selected
                          onPressed: () {
                            _selectMode('dark'); // Select dark mode
                            widget.onToggleTheme(false); // Toggle theme
                          },
                        ),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Space between row and button
                // Continue button
                BasicAppButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SignupOrSignin(), // Go to another page
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
