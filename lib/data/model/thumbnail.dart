import 'package:freezed_annotation/freezed_annotation.dart';
import 'media.dart';

part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
abstract class Thumbnail with _$Thumbnail {
  factory Thumbnail({
    Media? high,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);
}
