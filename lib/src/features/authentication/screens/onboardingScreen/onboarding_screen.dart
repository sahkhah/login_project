import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_project/src/constants/colors..dart';
import 'package:login_project/src/constants/image_strings.dart';
import 'package:login_project/src/constants/text_strings.dart';
import 'package:login_project/src/features/authentication/screens/onboardingScreen/onboarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/model_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = LiquidController();

 int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
          model: OnboardingModel(
        image: onBoaringImage1,
        title: onBoardingTitle1,
        subTitle: onBoardingSubtitle1,
        counterText: onBoardingCounter1,
        bgColor: onBoardingPage1Color,
        height: size.height,
      )),
      OnBoardingPageWidget(
          model: OnboardingModel(
        image: onBoaringImage1,
        title: onBoardingTitle2,
        subTitle: onBoardingSubtitle2,
        counterText: onBoardingCounter2,
        bgColor: onBoardingPage2Color,
        height: size.height,
      )),
      OnBoardingPageWidget(
          model: OnboardingModel(
        image: onBoaringImage1,
        title: onBoardingTitle3,
        subTitle: onBoardingSubtitle3,
        counterText: onBoardingCounter3,
        bgColor: onBoardingPage3Color,
        height: size.height,
      )),
    ];
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
          pages: pages,
          onPageChangeCallback: onPageChangeCallback,
          liquidController: controller,
          slideIconWidget: const Icon(
            Icons.arrow_back_ios,
          ),
          enableSideReveal: true,
        ),
        Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, 
                side: const BorderSide(
                  color: Colors.black26,
                ),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: darkColor),
                child: const Icon(Icons.arrow_forward_ios),
              ),
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
            )),
        Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.grey),
              ),
              onPressed: () => controller.jumpToPage(page: 2),  //if i press skip it jumps to the last page
            )),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: controller.currentPage,
            count: pages.length,
            effect: const WormEffect(
              activeDotColor: Color(0xff272727),
              dotHeight: 5.0,
            ),
          ),
        ),
      ]),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    setState(() {
    currentPage = activePageIndex;
    });
  }
}
