import 'package:Layway/features/shop/screens/home/home.dart';
import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkmode = LayawayHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          backgroundColor: darkmode ? LayawayColors.black : LayawayColors.white,
          indicatorColor: darkmode ? LayawayColors.white.withOpacity(0.1) : LayawayColors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home, size: LayawaySizes.iconSm), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop, size: LayawaySizes.iconSm), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart, size: LayawaySizes.iconSm), label: 'Whislist'),
            NavigationDestination(icon: Icon(Iconsax.user, size: LayawaySizes.iconSm), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
