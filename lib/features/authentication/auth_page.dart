import 'package:flutter/material.dart';
import 'package:prosonic/core/constant/constant.dart';
import 'package:prosonic/core/utils/size_config.dart';
import 'package:prosonic/core/widgets/animated_app_bar.dart';
import 'package:prosonic/core/widgets/helper_widgets.dart';
import 'package:prosonic/core/widgets/my_button.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  static const path = "/auth";

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnimatedAppBar(
        title: Text("Login | Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                  width: SizeConfig.widthMultiplier * 50,
                  child: Image.asset("assets/images/p.png")),
            ),
            hSizedBox(),
            TextFormField(),
            TextFormField(),
            TextFormField(),
            TextFormField(),
            TextFormField(),
            hSizedBox(h: SizeConfig.heightMultiplier * 5),
            MyButton(
              backgroundColor: AppConstant.primaryColor,
              title: "Register",
              titleStyle: Theme.of(context).textTheme.button,
              onPressed: () {},
            ),
            hSizedBox(),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Do you have an account ? Login",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppConstant.primaryColor.withOpacity(.8),
                        decorationStyle: TextDecorationStyle.dashed,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
