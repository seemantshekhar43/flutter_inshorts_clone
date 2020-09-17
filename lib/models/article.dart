class Article {
  String title;
  String author;
  String content;
  String description;
  String source;
  String sourceURL;
  String imageURL;
  DateTime publishedAt;

  Article(
      {this.title,
      this.author,
      this.content,
      this.source,
      this.description,
      this.sourceURL,
      this.imageURL,
      this.publishedAt});
}
