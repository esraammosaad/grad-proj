import 'package:flutter/material.dart';
import '../../../core/constants/styles.dart';
class CustomGridViewItemFooter extends StatelessWidget {
  const CustomGridViewItemFooter({
    super.key, required this.productName,
  });
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            productName,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14
                .copyWith(color: Colors.black,fontWeight: FontWeight.bold,),
          ),

        ],
      ),
    );
  }
}