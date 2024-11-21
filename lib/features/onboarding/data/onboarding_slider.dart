class OnboardingSliderData {
  final String imageAssetPath;
  final String title;
  final String desc;

  const OnboardingSliderData({
    required this.imageAssetPath,
    required this.title,
    required this.desc,
  });
}

List<OnboardingSliderData> getSlides() {
  return const [
    OnboardingSliderData(
      imageAssetPath: "assets/circuit/calc_adc_thumb.png",
      title: "Search",
      desc:
          "Discover Restaurants offering the best fast food near you on Foodwa.",
    ),
    OnboardingSliderData(
      imageAssetPath: "assets/circuit/calc_freq_thumb.png",
      title: "Order",
      desc: "Our veggie plan is filled with delicious seasonal vegetables, "
          "whole grains, beautiful cheeses, and vegetarian proteins.",
    ),
    OnboardingSliderData(
      imageAssetPath: "assets/circuit/calc_cap_thumb.png",
      title: "Eat",
      desc:
          "Food delivery or pickup from local restaurants. Explore restaurants "
          "that deliver near you.",
    ),
  ];
}
