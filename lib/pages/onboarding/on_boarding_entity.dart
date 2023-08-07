

class OnBoardingEntity {

  final String? image;
  final String? title;

  OnBoardingEntity({this.image, this.title});

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
      image: "on_boarding_1.jpg",
      title: "Find and land your next job",
    ),
    OnBoardingEntity(
        image: "on_boarding_2.jpg",
        title: "Build your nextwork on the go",
    ),
    OnBoardingEntity(
        image: "on_boarding_3.jpg",
        title: "Stay ahead with curated content for\nyour career",
    ),
  ];
}