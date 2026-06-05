import 'package:flutter/material.dart';
import 'package:task_management_project/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 86),
                Text(
                  'Get Started With',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _emailTEController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passTEController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right_rounded),
                ),
                TextButton(onPressed: () {}, child: Text('Forgot Password?')),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: "Don't have an account? ",
                    children: [TextSpan(text: 'Sign Up')],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
