

import 'package:get/get.dart';
import 'package:t_store/data/repositories/banners/banner_repository.dart';
import 'package:t_store/features/shop/models/banner_model.dart';
import 'package:t_store/utils/popups/loaders.dart';

class BannerController extends GetxController{
  
  // Variables
  final isLoading = false.obs;
  final carouselCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

// Update Page Navigational Dots
  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
  }
  
  // Fetch Banners
Future<void> fetchCategories() async {
  try {
    // Show loader while loading categories
    isLoading.value = true;

    //Fetch Banners
    final bannerRepo = Get.put(BannerRepository());
    final banners  = await bannerRepo.fetchBanners();

   //Assign Banners
   this.banners.assignAll(banners);

  } catch (e) {
    TLoaders.errorSnackBar(
      title: 'Oh Snap!',
      message: e.toString(),
    );
  } finally {
    // Remove Loader
    isLoading.value = false;
  }
}
}