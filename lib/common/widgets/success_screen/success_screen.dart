import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, 
  required this.title, required this.subTitle,  required this.onPressed, });
 final String image, title, subTitle;
final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              
             /// Image
              Lottie.asset(image,  width: MediaQuery.of(context).size.width *0.6),
               const SizedBox(height: TSizes.spaceBtwItems,),

              /// Title & Subtitle
              Text(title, 
              style: Theme.of(context).textTheme.headlineMedium, 
              textAlign: TextAlign.center,),

              const SizedBox(height: TSizes.spaceBtwItems,),

              Text(subTitle, 
              style: Theme.of(context).textTheme.labelMedium, 
              textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,), 

              /// Buttons
              SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: ()=> Get.to(() => const NavigationMenu()), 
            child: const Text(TTexts.tContinue)),),
            ],
          ),
        ),
      ),
    );
  }
}