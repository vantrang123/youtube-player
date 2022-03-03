import 'package:app/data/model/thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snippet.freezed.dart';
part 'snippet.g.dart';

@freezed
abstract class Snippet with _$Snippet {
  factory Snippet(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      String? channelTitle,
      Thumbnail? thumbnails}) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);
}
