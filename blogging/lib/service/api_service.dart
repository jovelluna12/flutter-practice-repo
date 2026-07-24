import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';
import '../models/blog_post.dart';

class ApiService {
  static Future<List<BlogPost>> getPosts() async {
    final response = await http.get(
      Uri.parse(Constants.blogCmsUrl),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final List<dynamic> posts = json['posts'];

      return posts.map((post) => BlogPost.fromJson(post)).toList();
    }

    throw Exception('Failed to load blog posts');
  }
}
