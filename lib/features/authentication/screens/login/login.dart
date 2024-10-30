import 'package:amazon_clone/common/styles/spacing_styles.dart';
import 'package:amazon_clone/util/constants/image_strings.dart';
import 'package:amazon_clone/util/constants/sizes.dart';
import 'package:amazon_clone/util/constants/text_strings.dart';
import 'package:amazon_clone/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LayawayHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LayawaySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? LayawayImages.lightAppLogo : LayawayImages.darkAppLogo),
                  ),
								  Text(LayawayTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
								  const SizedBox(height: LayawaySizes.sm,),
								  Text(LayawayTexts.loginSubTitle, style: Theme.of(context).textTheme.headlineMedium,),
                ],
              ),

							/// Form
							Form(
								child: padding (
									padding: const EdgeInserts.symetric(vertical: LayawaySizes.spaceBtwSection),
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
										decoration: const InputDecoration(
											prefixIcon: Icon(Iconsax.password_check),
											labelText: LayawayTexts.password,
											suffixIcon: Icon(Iconsax.eye_slash),
										),
									),
									const SizedBox(height: LayawaySizes.spaceBtwInputFields / 2),
	
									/// Remember Me & Forget Password
									Row(
										mainAxisAlignement: MainAxisAlignment.spacebetween,
										children: [
											/// Remember me
											/// Forget Password
										],
									),
									/// const SizedBox for spacing
									/// SizedBox for Sign in button using ElevatedButton
									/// const SizedBox for spacing
									/// SizedBox for create account button using OutlinedButton
									/// const SizedBox for spacing
									],
								),
							),
							),
							/// divider
						/// footer
            ],
          ),
        ),
      ),
    );
  }
}
