class Photo {
  String id;
  String author;
  int width;
  int height;
  String url;
  String download_url;

  Photo({this.id, this.author, this.width, this.height, this.url, this.download_url});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      author: json['author'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
      download_url: json['download_url'],
    );
  }
}
