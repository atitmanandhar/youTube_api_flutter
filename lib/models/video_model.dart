import 'package:flutter/foundation.dart';

class Video {
  Video({
    this.id,
    this.title,
    this.thumbnailUrl,
    this.channelTitle,
  });

  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle'],
    );
  }
}
