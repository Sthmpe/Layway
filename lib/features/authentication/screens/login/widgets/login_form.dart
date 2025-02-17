import 'package:Layway/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:Layway/features/authentication/screens/signup/signup.dart';
import 'package:Layway/navigation_menu.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LayawayLoginForm extends StatelessWidget {
  const LayawayLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: LayawaySizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: LayawayTexts.email,
              ),
            ),
            const SizedBox(height: LayawaySizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: LayawayTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: LayawaySizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(LayawayTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(LayawayTexts.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: LayawaySizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(LayawayTexts.signIn))),
            const SizedBox(
              height: LayawaySizes.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(LayawayTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
