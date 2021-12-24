class ImageSwipes {
  String? imgUrl;
  String? name;
  String? desc;

  ImageSwipes(this.imgUrl, this.name, this.desc);

  static List<ImageSwipes> generateImageSwipes() => [
        ImageSwipes(
          "assets/images/collection1.jpeg",
          "Collection1",
          "Lorem Ipsum",
        ),
    ImageSwipes(
      "assets/images/collection2.jpeg",
      "Collection2",
      "Lorem Ipsum",
    ),
    ImageSwipes(
      "assets/images/collection3.jpeg",
      "Collection3",
      "Lorem Ipsum",
    ),
    ImageSwipes(
      "assets/images/collection4.jpeg",
      "Collection4",
      "Lorem Ipsum",
    ),
    ImageSwipes(
      "assets/images/collection5.jpeg",
      "Collection5",
      "Lorem Ipsum",
    ),

      ];
}
