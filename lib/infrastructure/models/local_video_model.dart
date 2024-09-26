import 'package:flutter_tik_tok/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json['name'] ?? 'unknown name',
      videoUrl: json['videoUrl'] ?? 'unknown videoUrl',
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );
  }

  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}





// toVideoPostEntity