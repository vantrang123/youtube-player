
import 'package:app/data/model/videos.dart';
import 'package:app/data/model/result.dart';

abstract class VideosRepository {
  Future<Result<VideosResponse>> fetchTrending();
}
