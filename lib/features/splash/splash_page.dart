import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prosonic/core/constant/constant.dart';
import 'package:prosonic/core/utils/size_config.dart';
import 'package:prosonic/features/splash/splash_bloc.dart';

import '../base/base_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const path = "/";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _fadeAnimationController;
  late AnimationController _sizeAnimationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _fadeAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    _sizeAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward()
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              BlocProvider.of<SplashBloc>(context).add(AppStarted());
            }
          });

    _fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_fadeAnimationController);
    _scaleAnimation =
        Tween<double>(begin: .7, end: 1).animate(_fadeAnimationController);
  }

  @override
  void dispose() {
    _fadeAnimationController.dispose();
    _sizeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<SplashBloc>(context),
      listener: (context, state) {
        if (state is NavigateToHome) {
          Navigator.pushReplacementNamed(context, BasePage.path);
        }
      },
      child: Scaffold(
        backgroundColor: AppConstant.gray,
        body: SafeArea(
          child: Hero(
            tag: AppConstant.splashIconHero,
            child: Center(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Image.asset(
                    "assets/images/p.png",
                    width: SizeConfig.widthMultiplier * 50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
