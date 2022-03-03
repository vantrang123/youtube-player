// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Snippet _$$_SnippetFromJson(Map<String, dynamic> json) => _$_Snippet(
      publishedAt: json['publishedAt'] as String?,
      channelId: json['channelId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      channelTitle: json['channelTitle'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SnippetToJson(_$_Snippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt,
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'channelTitle': instance.channelTitle,
      'thumbnails': instance.thumbnails,
    };
