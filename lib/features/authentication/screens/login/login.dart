import 'package:Layway/common/styles/spacing_styles.dart';
import 'package:Layway/common/widgets/login_signup/form_divider.dart';
import 'package:Layway/common/widgets/login_signup/social_buttons.dart';
import 'package:Layway/features/authentication/screens/login/widgets/login_form.dart';
import 'package:Layway/features/authentication/screens/login/widgets/login_header.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LayawaySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Subtitle
              const LayawayLoginHeader(),

              /// Form
              const LayawayLoginForm(),

              /// Divider
              LayawayLoginDivider(dividerText: LayawayTexts.orSignInWith.capitalize!),
              const SizedBox(
                width: LayawaySizes.spaceBtwSections,
              ),

              /// Footer
              const LayawaySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
