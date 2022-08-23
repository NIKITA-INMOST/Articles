import 'package:articles/data/models/post.dart';

class User {
  User({
    required this.id,
    required this.name,
    required this.image,
    required this.posts,
  });

  final int id;
  final String name;
  final String image;
  final List<Post> posts;

  factory User.fromJson({
    required Map<String, dynamic> json,
    required List<Post> posts,
  }) {
    return User(
        id: json['userId'],
        name: json['name'],
        image: json['url'],
        posts: posts);
  }

  int get countPosts => posts.length;
}
