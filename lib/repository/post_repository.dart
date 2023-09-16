import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/get_post_model.dart';

abstract class PostListRepostitory {
  Future<List<GetPost>> getPostReport();
}

class PostRepository implements PostListRepostitory {
  @override
  Future<List<GetPost>> getPostReport() async {
    var response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/1/comments"),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    var data = json.decode(response.body);
    if (response.statusCode == 200) {
      List<GetPost> postDetails = parseList(response.body);

      return postDetails;
    } else {
      throw data["message"] ?? "Something went wrong.";
    }
  }

  static List<GetPost> parseList(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<GetPost>((json) => GetPost.fromJson(json)).toList();
  }
}
