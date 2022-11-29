import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prosonic/core/constant/constant.dart';
import 'package:prosonic/core/utils/size_config.dart';
import 'package:prosonic/core/widgets/helper_widgets.dart';
import 'package:prosonic/features/authentication/login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const path = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileSection(),
            divider(),
            const AuthenticationSection(),
          ],
        ),
      ),
    );
  }
}

class AuthenticationSection extends StatelessWidget {
  const AuthenticationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item(
          context,
          icon: Icons.key,
          iconColor: Colors.amber,
          title: "Login | Register",
          onTap: () {
            Navigator.pushNamed(context, LoginPage.path);
          },
        ),
        item(
          context,
          icon: Icons.account_circle,
          iconColor: AppConstant.blue,
          title: "Edit Personal Information",
          onTap: () {},
        ),
        item(
          context,
          icon: Ionicons.language,
          iconColor: Colors.deepPurpleAccent,
          title: "Change Language",
          onTap: () {},
        ),
        item(
          context,
          ionIcon: Ionicons.information,
          iconColor: Colors.greenAccent,
          title: "About Us",
          onTap: () {},
        ),
        item(
          context,
          icon: Icons.exit_to_app,
          iconColor: AppConstant.red,
          title: "Logout",
          onTap: () {},
        ),
        divider(),
        item(
          context,
          icon: Icons.celebration,
          iconColor: Colors.orange,
          title: "Invite Friends",
          onTap: () {},
        ),
        divider(),
        item(
          context,
          icon: Icons.numbers,
          iconColor: Colors.grey,
          title: "Version : 0.0.1",
        ),
      ],
    );
  }

  item(context,
          {String? title,
          IconData? icon,
          IoniconsData? ionIcon,
          VoidCallback? onTap,
          Color? iconColor}) =>
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(
                icon ?? ionIcon ?? Ionicons.snow,
                size: 30,
                color: iconColor,
              ),
              wSizedBox(w: 20),
              Text(
                title ?? "Test",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      );
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        hSizedBox(),
        SizedBox(
          width: SizeConfig.imageSizeMultiplier * 30,
          height: SizeConfig.imageSizeMultiplier * 30,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/user.png",
                  width: SizeConfig.imageSizeMultiplier * 30,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppConstant.gray,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        hSizedBox(h: 20),
        Text(
          "User",
          style: Theme.of(context).textTheme.headline5,
        ),
        hSizedBox(h: 10),
        Text(
          "User@gmail.com",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        hSizedBox(h: 20),
      ],
    );
  }
}
