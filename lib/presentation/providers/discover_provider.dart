import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repository/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: repository, dataSource
  final VideoPostsRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    // List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();

    List<VideoPost> newVideos = await videosRepository.getTrendingVideosByPage(
      1,
    );

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
