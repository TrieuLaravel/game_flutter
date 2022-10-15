import 'package:do_an/Screens/Index/components/destop_index.dart';
import 'package:do_an/Screens/Index/components/mobile_index.dart';
import 'package:do_an/responsive.dart';
import 'package:flutter/material.dart';
import '../../components/background_custom.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundCustom(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileIndex(),
          desktop: Row(
            children: [
              const Expanded(
                child: DestopIndex(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      // child: LoginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

