import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_project/ui/screens/login_screen.dart';
import 'package:task_management_project/ui/utilities/asset_paths.dart';
import 'package:task_management_project/ui/widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetPaths.logoSVG, height: 200),
            Text('Task Manager',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600
            ),),
          ],
        ),
      ),
    );
  }
}
