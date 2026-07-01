

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/utils/popups/loaders.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

/// Send email whenever verify screen apears & set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  

  }


  ///send email verification link
  Future<void> sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Email Sent', message: 'Please check your inbox and verify your email');
    }catch(e){
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
  
  /// timer to automatically redirect an email verification
  
  void setTimerForAutoRedirect(){
    Timer.periodic(const Duration(seconds: 1), (timer)  { 
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if(user?.emailVerified ?? false){
        timer.cancel();
        Get.off(()=> SuccessScreen(
          image: TImages.successfullyRegisterAnimation, 
          title: TTexts.yourAccountCreatedTitle, 
          subTitle: TTexts.yourAccountCreatedSubTitle, 
          onPressed:() => AuthenticationRepository.instance.screenRedirect()
          )
          );
      }
      
    });
  }
  
  
  /// manually check if email is verified
  Future<void> checkEmailVerificationStatus() async{
   
      final currentUser = FirebaseAuth.instance.currentUser;
      if(currentUser != null && currentUser.emailVerified){
       Get.off(()=> SuccessScreen(image: TImages.successfullyRegisterAnimation, 
       title: TTexts.yourAccountCreatedTitle, 
       subTitle: TTexts.yourAccountCreatedSubTitle, 
       onPressed:() => AuthenticationRepository.instance.screenRedirect(),));
     
      }

  }


}