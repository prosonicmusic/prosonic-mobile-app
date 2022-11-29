import 'package:flutter/material.dart';
import 'package:prosonic/core/widgets/animated_app_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const path = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AnimatedAppBar(
        title: Text("Authentication"),
      ),
    );
  }
}
