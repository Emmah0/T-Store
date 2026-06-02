import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_show_case.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            const TBrandShowcase(
              images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1
              ],
            ),
            const TBrandShowcase(
              images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
      
            /// Products
            TSectionHeading(title: 'You might like', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            TGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) => const TProductCardVertical()),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            )
          ],
        ),
      ),
    );
  }
}
