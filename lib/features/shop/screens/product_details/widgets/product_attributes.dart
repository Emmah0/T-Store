import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choice_chip.dart';
import 'package:t_store/common/widgets/images/t_rounded_container.dart';
import 'package:t_store/common/widgets/texts/product_little_text.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing and Description
        TRoundedContainer(padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(

            children: [
              Row(children: [
              const  TSectionHeading(title: 'Variation', showActionButton: false,),
               const SizedBox(width: TSizes.spaceBtwItems,),

               Column(
                 children: [
                   Row(
                    children: [
                      const TProductTitleText(title: 'Price :', smallSize: true,),
                      const SizedBox(width: TSizes.spaceBtwItems,),

                      /// Actual Price 
                      Text('\$25', style: Theme.of(context).textTheme.titleSmall!.
                    apply(decoration: TextDecoration.lineThrough),),
                    const SizedBox(width: TSizes.spaceBtwItems,),

                    /// sale price
                    TProductPriceText(price: '20'),
                 ],
               ),

               /// Stock
               Row(children: [
                const TProductTitleText(title: 'Stock : ', smallSize: true,),
                Text('In Stock', style: Theme.of(context). textTheme.titleMedium),
               ],),
                 ],
                   )
              ],
              ),

              /// Variation Description
              TProductTitleText(title: 'This is the description of the product and it can go upto max 4 lines',
              smallSize: true,
              maxLines: 4,
              )
            ],
          ),
        ),
      const SizedBox(height: TSizes.spaceBtwItems,),

      /// Attributes
      Column(
        children: [
          const TSectionHeading(title: 'Colors', showActionButton: false,),
           const SizedBox(height: TSizes.spaceBtwItems / 2,),
          Wrap(spacing: 8,
            children: [
          TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
           TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
           TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
           TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
           TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
           TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
           TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
           TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
           TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
            ],
          )
        ],
       ),
       Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TSectionHeading(title: 'Colors', showActionButton: false,),
           const SizedBox(height: TSizes.spaceBtwItems / 2,),
          Wrap(spacing: 8,
            children: [
              TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
           TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
          TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){}),
          TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
           TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
          TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){}),
          TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
           TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
          TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){}),
            ],
          )
        ],
       ),
      ],
    );
  }
}
