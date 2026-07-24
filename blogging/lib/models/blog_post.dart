class BlogPost {
  final String title;
  final String excerpt;

  BlogPost({required this.title, required this.excerpt});

  factory BlogPost.fromJson(Map<String, dynamic> json) {
    return BlogPost(title: json['title'], excerpt: json['body']);
  }
}
