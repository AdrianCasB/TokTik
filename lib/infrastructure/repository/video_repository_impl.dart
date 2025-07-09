import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repository/video_posts_repository.dart';

class VideoRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videosDatasource;

  VideoRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
