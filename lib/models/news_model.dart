class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? content;

  ArticleModel({this.content,required this.image, required this.title, required this.subTitle});

  factory ArticleModel.fromJson (json){
    return ArticleModel(
      content : json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],);
  }
}