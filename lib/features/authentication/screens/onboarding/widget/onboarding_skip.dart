import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.geTAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(onPressed: () => Get.offAll(() => const LoginScreen()),
         child: const Text('Skip')));
  }
}
