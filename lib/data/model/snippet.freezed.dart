// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'snippet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
class _$SnippetTearOff {
  const _$SnippetTearOff();

  _Snippet call(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      String? channelTitle,
      Thumbnail? thumbnails}) {
    return _Snippet(
      publishedAt: publishedAt,
      channelId: channelId,
      title: title,
      description: description,
      channelTitle: channelTitle,
      thumbnails: thumbnails,
    );
  }

  Snippet fromJson(Map<String, Object?> json) {
    return Snippet.fromJson(json);
  }
}

/// @nodoc
const $Snippet = _$SnippetTearOff();

/// @nodoc
mixin _$Snippet {
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get channelId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get channelTitle => throw _privateConstructorUsedError;
  Thumbnail? get thumbnails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res>;
  $Res call(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      String? channelTitle,
      Thumbnail? thumbnails});

  $ThumbnailCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res> implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  final Snippet _value;
  // ignore: unused_field
  final $Res Function(Snippet) _then;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelTitle = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
    ));
  }

  @override
  $ThumbnailCopyWith<$Res>? get thumbnails {
    if (_value.thumbnails == null) {
      return null;
    }

    return $ThumbnailCopyWith<$Res>(_value.thumbnails!, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }
}

/// @nodoc
abstract class _$SnippetCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$SnippetCopyWith(_Snippet value, $Res Function(_Snippet) then) =
      __$SnippetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      String? channelTitle,
      Thumbnail? thumbnails});

  @override
  $ThumbnailCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class __$SnippetCopyWithImpl<$Res> extends _$SnippetCopyWithImpl<$Res>
    implements _$SnippetCopyWith<$Res> {
  __$SnippetCopyWithImpl(_Snippet _value, $Res Function(_Snippet) _then)
      : super(_value, (v) => _then(v as _Snippet));

  @override
  _Snippet get _value => super._value as _Snippet;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelTitle = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_Snippet(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Snippet implements _Snippet {
  _$_Snippet(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.channelTitle,
      this.thumbnails});

  factory _$_Snippet.fromJson(Map<String, dynamic> json) =>
      _$$_SnippetFromJson(json);

  @override
  final String? publishedAt;
  @override
  final String? channelId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? channelTitle;
  @override
  final Thumbnail? thumbnails;

  @override
  String toString() {
    return 'Snippet(publishedAt: $publishedAt, channelId: $channelId, title: $title, description: $description, channelTitle: $channelTitle, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Snippet &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publishedAt, channelId, title,
      description, channelTitle, thumbnails);

  @JsonKey(ignore: true)
  @override
  _$SnippetCopyWith<_Snippet> get copyWith =>
      __$SnippetCopyWithImpl<_Snippet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnippetToJson(this);
  }
}

abstract class _Snippet implements Snippet {
  factory _Snippet(
      {String? publishedAt,
      String? channelId,
      String? title,
      String? description,
      String? channelTitle,
      Thumbnail? thumbnails}) = _$_Snippet;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$_Snippet.fromJson;

  @override
  String? get publishedAt;
  @override
  String? get channelId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get channelTitle;
  @override
  Thumbnail? get thumbnails;
  @override
  @JsonKey(ignore: true)
  _$SnippetCopyWith<_Snippet> get copyWith =>
      throw _privateConstructorUsedError;
}
