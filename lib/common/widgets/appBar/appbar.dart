import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LayawayAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LayawayAppBar({
    super.key, 
    this.title,
    this.showBackArrow = false,
    this.leadingIcon, 
    this.actions, 
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow 
        ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(LayawayDeviceUtils.getAppBarHeight());

}
