class News {
  String? source, author, title, description, url, urlToImage, publishedAt, content;

  News({
    required this.source,
             this.author, 
             this.title, 
             this.description, 
             this.url, 
             this.urlToImage, 
             this.publishedAt, 
             this.content
  });

  factory News.fromJson(Map<String, dynamic> json){
    return News(
      source: json['source']['name'],
      author : json['author'],
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
    );
  }
}