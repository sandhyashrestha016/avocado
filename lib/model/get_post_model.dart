// To parse this JSON data, do
//
//     final getPost = getPostFromJson(jsonString);

import 'dart:convert';

List<GetPost> getPostFromJson(String str) =>
    List<GetPost>.from(json.decode(str).map((x) => GetPost.fromJson(x)));

String getPostToJson(List<GetPost> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetPost {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  GetPost({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  factory GetPost.fromJson(Map<String, dynamic> json) => GetPost(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
