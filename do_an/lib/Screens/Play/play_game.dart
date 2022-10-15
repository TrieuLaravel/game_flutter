import 'package:do_an/Screens/Play/component/destop_play_game.dart';
import 'package:do_an/Screens/Play/component/mobile_play_game.dart';
import 'package:do_an/responsive.dart';
import 'package:flutter/material.dart';

import '../../components/background_custom.dart';

class PlayGame extends StatelessWidget {
  const PlayGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundCustom(
        child: Responsive(
          mobile: const MobilePlayGame(),
          desktop: Row(
            children: [
              const Expanded(
                child: DestopPlayGame(),
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
    );
  }
}

