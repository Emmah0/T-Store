import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetailScreeen extends StatelessWidget {
  const ProductDetailScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product  image slider
          const TProductImageSlider(),

          /// Product details
       Padding(padding: const EdgeInsets.only(
        right: TSizes.defaultSpace,left: TSizes.defaultSpace, bottom: TSizes.defaultSpace,),
        child:  Column(
          children: [
            /// Rating & Share Button
            TRatingAndShare(),

            /// Price, Title, Stock & Brand
            TProductMetaData(),
            /// Attributes
            /// Checkout Button
            /// Description
            /// Reviews
          ],
        ),
        ),
          ],
        ),
      ),
    );
  }
}
