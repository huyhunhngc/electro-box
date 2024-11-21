import 'package:circuit_electricial_box/features/onboarding/data/onboarding_slider.dart';
import 'package:circuit_electricial_box/features/onboarding/widgets/slide_tile.dart';
import 'package:circuit_electricial_box/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  List<OnboardingSliderData> slide = getSlides();
  int slideIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.secondaryContainer,
              colorScheme.tertiaryContainer
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    slideIndex = index;
                  });
                },
                children: slide.map((slide) {
                  return SlideTile(
                    imagePath: slide.imageAssetPath,
                    title: slide.title,
                    desc: slide.desc,
                  );
                }).toList(),
              ),
            ),
            _buildControlButton()
          ],
        ),
      ),
      bottomSheet: _buildStartButton(),
    );
  }

  Widget _buildControlButton() {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return slideIndex != 2
        ? Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.linear);
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      i == slideIndex
                          ? _buildPageIndicator(true)
                          : _buildPageIndicator(false),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    pageController.animateToPage(slideIndex + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          )
        : Container();
  }

  Widget? _buildStartButton() {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return slideIndex == slide.length - 1
        ? InkWell(
            onTap: () {
              GoRouter.of(context).replace(homeRoute);
            },
            child: Container(
              height: 70,
              color: colorScheme.primary,
              alignment: Alignment.center,
              child: Text(
                "GET STARTED NOW",
                style: TextStyle(
                    color: colorScheme.onPrimary, fontWeight: FontWeight.w600),
              ),
            ),
          )
        : null;
  }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
