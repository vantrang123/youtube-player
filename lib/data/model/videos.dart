import 'package:app/data/model/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'videos.freezed.dart';
part 'videos.g.dart';

@freezed
abstract class VideosResponse with _$VideosResponse {
  factory VideosResponse({
    required String kind,
    required String etag,
    required List<News> items,
    required String nextPageToken,

  }) = _VideosResponse;

  factory VideosResponse.fromJson(Map<String, dynamic> json) => _$VideosResponseFromJson(json);
}
