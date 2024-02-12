class ArticaleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  ArticaleModel({
    required this.image,
    required this.subTitle,
    required this.title,
    required this.url,
  });
  factory ArticaleModel.fromJson(json) {
    return ArticaleModel(
      image: json['image'],
      title: json['title'],
      subTitle: json['description'],
      url: json['url'],
    );
  }
}
