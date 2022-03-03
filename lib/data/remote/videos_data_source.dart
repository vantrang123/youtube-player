import 'package:app/data/model/videos.dart';
import 'package:app/data/remote/app_dio.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'videos_data_source.g.dart';

final videosDataSourceProvider = Provider((ref) => VideosDataSource(ref.read));

@RestApi()
abstract class VideosDataSource {
  factory VideosDataSource(Reader reader) =>
      _VideosDataSource(reader(dioProvider));

  @GET('/v3/videos')
  Future<VideosResponse> fetchTrending({
    @Query("part") String? part = "snippet",
    @Query("maxResults") int? maxResults = 10,
    @Query("chart") String? chart = 'mostPopular',
    @Query("key") required String apiKey
  });
}
