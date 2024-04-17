import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';
import '../../../core/constants/styles.dart';
class CustomSliverTryAgainText extends StatelessWidget {
  const CustomSliverTryAgainText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
            child: Text(
              text,
              style:
              Styles.textStyle12.copyWith(color: AppColors.kGreyColor),
            )));
  }
}
