import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // mobile
            return const LoginState();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            //tablet
            return const LoginState();
          } else {
            //pc
            return const LoginState();
          }
        },
      ),
    );
  }
}

class LoginState extends StatefulWidget {
  const LoginState({super.key});

  @override
  State<LoginState> createState() => _LoginState();
}

class _LoginState extends State<LoginState> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  Widget _button(String data) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      onPressed: () {},
      child: Text(
        data,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Xin chào',
                    style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Đăng nhập tài khoản',
                    style: GoogleFonts.inter(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    controller: _user,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0),
                      ),
                      hintText: 'Tên tài khoản',
                      labelText: 'Tên tài khoản',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0),
                      ),
                      hintText: 'Mật khẩu',
                      labelText: 'Mật khẩu',
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: const <Widget>[
                            Text('check'),
                            Text('Quên mật khẩu'),
                          ],
                        ),
                      ),
                      Container(
                        child: const Text('1'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  _button('Đăng nhập'),
                  const SizedBox(
                    height: 10.0,
                  ),
                  _button('Đăng nhập bằng Facebook'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
