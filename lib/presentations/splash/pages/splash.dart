import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_2030_flutter/presentations/intro/pages/get_started.dart';
import '../../../core/configs/assets/app_vectors.dart';

class SplashPage extends StatefulWidget {
  final Function(bool) onToggleTheme;

  const SplashPage({Key? key, required this.onToggleTheme}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  Future redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              GetStartedPage(onToggleTheme: widget.onToggleTheme),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVectors.logo),
      ),
    );
  }
}
