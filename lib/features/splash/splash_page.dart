import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prosonic/core/constant/constant.dart';
import 'package:prosonic/core/utils/size_config.dart';
import 'package:prosonic/features/splash/splash_bloc.dart';

import '../home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const path = "/";

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<SplashBloc>(context)..add(AppStarted()),
      listener: (context, state) {
        if (state is NavigateToHome) {
          Navigator.pushReplacementNamed(context, HomePage.path);
        }
      },
      child: Scaffold(
        backgroundColor: AppConstant.gray,
        body: SafeArea(
          child: Center(
            child: Image.asset(
              "assets/images/p.png",
              width: SizeConfig.widthMultiplier * 50,
            ),
          ),
        ),
      ),
    );
  }
}
