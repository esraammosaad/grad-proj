import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grad_proj/controller/home_controllers/nav_bar_controller.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:grad_proj/core/class/them_controller.dart';
import 'package:grad_proj/core/constants/app_routes.dart';
import 'package:grad_proj/core/constants/color.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find();
    return GetBuilder<NavBarControllerImp>(
      builder: (controller) => Obx(() {
        return BottomNavigationBar(
          // height: 80,
          elevation: 0,

          backgroundColor:
              themeController.isDarkMode.value ? Colors.black26 : Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(            IconlyLight.user_1,
            ), label: 'Community'),
            BottomNavigationBarItem(icon: Icon(IconlyLight.camera), label: 'Camera'),
            BottomNavigationBarItem(icon: Icon( Iconsax.tree,), label: 'Garden'),
            BottomNavigationBarItem(icon: Icon( Icons.bluetooth_connected,), label: 'Bluetooth'),
            BottomNavigationBarItem(icon: Icon( IconlyLight.setting,), label: 'Settings'),





          ],
          selectedItemColor: AppColors.kPrimaryColor,
          currentIndex: controller.selectedPage,
          unselectedItemColor: AppColors.greyColor,
          selectedFontSize: 12,


          // activeColor: AppColors.kPrimaryColor,
          // inactiveColor: AppColors.greyColor,
          // activeIndex: controller.selectedPage,
          // // gapLocation: GapLocation.center,
          // notchMargin: 0,
          // notchSmoothness: NotchSmoothness.sharpEdge,

          onTap: (int index) {
            if(index!=2){
              controller.navBar(index);
              controller.pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut);}
            else if(index==2){
              Get.toNamed(AppRoutes.cameraScreen);
            }

          },
          //other params
        );
      }),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find();

    return FloatingActionButton(
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColors.kPrimaryColor),
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.cameraScreen);
        },
        backgroundColor: AppColors.kPrimaryColor,
        child: Obx(
          () {
            return Icon(
              IconlyLight.camera,
              color:  themeController.isDarkMode.value ? Colors.black : Colors.white,
              size: 28,
            );
          }
        ));
  }
}

//BottomNavigationBar( backgroundColor: const Color(0xffF4F4F4),items:  [
//
//         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house,color:  AppColors.kGreyColor,),label: '',),
//         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.peopleGroup,color: AppColors.kGreyColor,),label: ''),
//         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.camera,color: AppColors.kGreyColor,),label: ''),
//         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bluetooth,color: AppColors.kGreyColor,),label: ''),
//         BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.person,color: AppColors.kGreyColor,),label: ''),
//
//       ],selectedItemColor: AppColors.kPrimaryColor,iconSize: 20,currentIndex: controller.selectedPage, onTap: (int index) {
//            controller.navBar(index);
//            controller.pageController.jumpToPage(index);
//        }, )

//BottomBarCreative(
//         enableShadow: true,
//         items: const [
//           TabItem(
//             icon: Icons.home_rounded,
//           ),
//           TabItem(
//             icon: Icons.groups,
//           ),
//           TabItem(
//             icon: FontAwesomeIcons.camera,
//           ),
//           TabItem(
//             icon: Icons.bluetooth_searching_outlined,
//           ),
//           TabItem(
//             icon: FontAwesomeIcons.personCircleCheck,
//           ),
//         ],
//         borderRadius: const BorderRadius.only(
//             topRight: Radius.circular(15), topLeft: Radius.circular(15)),
//         backgroundColor: const Color(0xffF4F4F4),
//         iconSize: 25,
//         color: AppColors.kGreyColor,
//         colorSelected: AppColors.kPrimaryColor,
//         indexSelected: controller.selectedPage,
//
//
//         onTap: (int index) {
//           controller.navBar(index);
//           controller.pageController.jumpToPage(index);
//         },
//         isFloating: true,
//       )
