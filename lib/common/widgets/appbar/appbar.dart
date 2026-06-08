import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({super.key, 
   this.title, 
   this.leadingIcon, 
   this.actions, 
   this.leadingOnPressed,
    this.showBackArrow = false
    });

final Widget? title;
final bool showBackArrow;
final IconData? leadingIcon;
final List <Widget>? actions;
final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.md),
    child: AppBar(
      automaticallyImplyLeading: false,
    leading: showBackArrow? 
    IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left, color: dark? Colors.white : Colors.black,)):
    leadingIcon != null ?
    IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
    title: title,
    actions: actions,
    ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight()); 
}