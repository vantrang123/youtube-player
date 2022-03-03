// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideosResponse _$$_VideosResponseFromJson(Map<String, dynamic> json) =>
    _$_VideosResponse(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String,
    );

Map<String, dynamic> _$$_VideosResponseToJson(_$_VideosResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'items': instance.items,
      'nextPageToken': instance.nextPageToken,
    };
