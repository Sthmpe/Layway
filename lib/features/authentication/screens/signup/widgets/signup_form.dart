import 'package:Layway/features/authentication/screens/signup/verify_email.dart';
import 'package:Layway/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LayawaySignupForm extends StatelessWidget {
  const LayawaySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: LayawayTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: LayawaySizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: LayawayTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: LayawaySizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: LayawayTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: LayawaySizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: LayawayTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: LayawaySizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: LayawayTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: LayawaySizes.spaceBtwInputFields),

          /// PassWord
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: LayawayTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: LayawaySizes.spaceBtwInputFields),

          /// Terms&condition checkbox
          const LayawayTermsAndConditionCheckBox(),
          const SizedBox(height: LayawaySizes.spaceBtwSections),

          /// Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreens()),
              child: const Text(LayawayTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}