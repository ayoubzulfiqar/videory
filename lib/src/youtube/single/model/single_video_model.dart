import 'package:flutter/foundation.dart' show immutable;

@immutable
class SingleYouTubeVideo {
  final String videoId;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;
  final int viewCount;
  final int likeCount;
  final int dislikeCount;
  final String duration;

  const SingleYouTubeVideo({
    required this.videoId,
    required this.title,
    required this.channelTitle,
    required this.thumbnailUrl,
    required this.viewCount,
    required this.likeCount,
    required this.dislikeCount,
    required this.duration,
  });

  @override
  String toString() {
    return {
      "VideID": videoId,
      "Title": title,
      "ThumbnailURL": thumbnailUrl,
      "ChannelAuthor": channelTitle,
      "ViewCount": viewCount,
      "LikeCount": likeCount,
      "DislikeCount": dislikeCount,
      "Duration": duration
    }.toString();
  }
}
