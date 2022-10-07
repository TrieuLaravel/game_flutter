import 'package:flutter/material.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({Key? key, required this.user, required this.password})
      : super(key: key);
  final TextEditingController user;
  final TextEditingController password;
  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
