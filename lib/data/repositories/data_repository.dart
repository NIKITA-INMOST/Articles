import 'package:articles/config.dart';
import 'package:articles/data/models/post.dart';
import 'package:articles/data/models/user.dart';
import 'package:dio/dio.dart';

class DataRepository {
  factory DataRepository() => _instance;
  DataRepository._internal();
  static final DataRepository _instance = DataRepository._internal();

  Future<List<User>> getUsers() async {
    Uri uri = Uri.parse(EndPoint.userApi);
    final response = await Dio().getUri(uri);

    final List<Post> posts = await getPost();

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;

      final List<User> users = [];

      for (var userJson in data) {
        final List<Post> userPosts = posts
            .where((element) => element.userId == userJson['userId'])
            .toList();
        users.add(User.fromJson(json: userJson, posts: userPosts));
      }

      return users;
    }

    throw Exception("Error! Status code ${response.statusCode}");
  }

  Future<List<Post>> getPost() async {
    Uri uri = Uri.parse(EndPoint.postApi);
    final response = await Dio().getUri(uri);

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((jsonPost) => Post.fromJson(json: jsonPost)).toList();
    }

    throw Exception("Error! Status code ${response.statusCode}");
  }
}
