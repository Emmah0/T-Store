import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/images/t_rounded_container.dart';
import 'package:t_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store/features/shop/screens/brand/all_brands.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
        onTap:() => Get.to(()=> const AllBrandsScreen()),

        /// Container Design
        child: TRoundedContainer(
            showBorder: showBorder,
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.all(TSizes.sm),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              /// -- Icon
              Flexible(
                child: TCircularImage(
                  isNetworkImage: false,
                  image: TImages.clothIcon,
                  backgroundColor: Colors.transparent,
                  overlayColor: isDark ? TColors.white : TColors.black,
                ), // TCircularImage
              ), // Flexible
              const SizedBox(width: TSizes.spaceBtwItems / 2),

              /// -- Texts
// [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the ver
// to keep text inside the boundaries.
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TBrandTitleWithVerifiedIcon(
                        title: 'Nike', brandTextSize: TextSizes.large),
                    Text(
                      '25 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              )
            ])));
  }
}
