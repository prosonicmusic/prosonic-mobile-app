import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prosonic/core/constant/constant.dart';
import 'package:prosonic/core/router/router.dart';
import 'package:prosonic/core/utils/size_config.dart';
import 'package:prosonic/features/splash/splash_bloc.dart';
import 'package:prosonic/features/splash/splash_page.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
      .copyWith(statusBarIconBrightness: Brightness.light));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MultiBlocProvider(
          providers: [
            BlocProvider<SplashBloc>(
              create: (BuildContext context) => SplashBloc(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstant.appName,
            theme: AppConstant.getTheme(context),
            onGenerateRoute: AppRouter.onGenerationRouter,
            initialRoute: SplashPage.path,
          ),
        );
      });
    });
  }
}
