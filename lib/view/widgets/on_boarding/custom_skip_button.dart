import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/styles.dart';
import '../../screens/auth/login.dart';
class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>const LogIn());
      },
      child: Text(
        'Skip',
        style: Styles.textStyle18,
      ),
    );
  }
}
