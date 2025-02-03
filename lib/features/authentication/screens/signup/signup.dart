import 'package:Layway/common/widgets/login_signup/form_divider.dart';
import 'package:Layway/common/widgets/login_signup/social_buttons.dart';
import 'package:Layway/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LayawaySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(LayawayTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: LayawaySizes.spaceBtwItems),

              /// Form
              const LayawaySignupForm(),
              const SizedBox(height: LayawaySizes.spaceBtwItems),

              /// Divider
              LayawayFormDivider(
                  dividerText: LayawayTexts.orSignUpWith.capitalize!),
              const SizedBox(height: LayawaySizes.spaceBtwSections),

              /// Social Button
              const LayawaySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
