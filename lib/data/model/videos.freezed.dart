// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) {
  return _VideosResponse.fromJson(json);
}

/// @nodoc
class _$VideosResponseTearOff {
  const _$VideosResponseTearOff();

  _VideosResponse call(
      {required String kind,
      required String etag,
      required List<News> items,
      required String nextPageToken}) {
    return _VideosResponse(
      kind: kind,
      etag: etag,
      items: items,
      nextPageToken: nextPageToken,
    );
  }

  VideosResponse fromJson(Map<String, Object?> json) {
    return VideosResponse.fromJson(json);
  }
}

/// @nodoc
const $VideosResponse = _$VideosResponseTearOff();

/// @nodoc
mixin _$VideosResponse {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  List<News> get items => throw _privateConstructorUsedError;
  String get nextPageToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosResponseCopyWith<VideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosResponseCopyWith<$Res> {
  factory $VideosResponseCopyWith(
          VideosResponse value, $Res Function(VideosResponse) then) =
      _$VideosResponseCopyWithImpl<$Res>;
  $Res call({String kind, String etag, List<News> items, String nextPageToken});
}

/// @nodoc
class _$VideosResponseCopyWithImpl<$Res>
    implements $VideosResponseCopyWith<$Res> {
  _$VideosResponseCopyWithImpl(this._value, this._then);

  final VideosResponse _value;
  // ignore: unused_field
  final $Res Function(VideosResponse) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? items = freezed,
    Object? nextPageToken = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<News>,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideosResponseCopyWith<$Res>
    implements $VideosResponseCopyWith<$Res> {
  factory _$VideosResponseCopyWith(
          _VideosResponse value, $Res Function(_VideosResponse) then) =
      __$VideosResponseCopyWithImpl<$Res>;
  @override
  $Res call({String kind, String etag, List<News> items, String nextPageToken});
}

/// @nodoc
class __$VideosResponseCopyWithImpl<$Res>
    extends _$VideosResponseCopyWithImpl<$Res>
    implements _$VideosResponseCopyWith<$Res> {
  __$VideosResponseCopyWithImpl(
      _VideosResponse _value, $Res Function(_VideosResponse) _then)
      : super(_value, (v) => _then(v as _VideosResponse));

  @override
  _VideosResponse get _value => super._value as _VideosResponse;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? items = freezed,
    Object? nextPageToken = freezed,
  }) {
    return _then(_VideosResponse(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<News>,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideosResponse implements _VideosResponse {
  _$_VideosResponse(
      {required this.kind,
      required this.etag,
      required this.items,
      required this.nextPageToken});

  factory _$_VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VideosResponseFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final List<News> items;
  @override
  final String nextPageToken;

  @override
  String toString() {
    return 'VideosResponse(kind: $kind, etag: $etag, items: $items, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideosResponse &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kind, etag,
      const DeepCollectionEquality().hash(items), nextPageToken);

  @JsonKey(ignore: true)
  @override
  _$VideosResponseCopyWith<_VideosResponse> get copyWith =>
      __$VideosResponseCopyWithImpl<_VideosResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosResponseToJson(this);
  }
}

abstract class _VideosResponse implements VideosResponse {
  factory _VideosResponse(
      {required String kind,
      required String etag,
      required List<News> items,
      required String nextPageToken}) = _$_VideosResponse;

  factory _VideosResponse.fromJson(Map<String, dynamic> json) =
      _$_VideosResponse.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  List<News> get items;
  @override
  String get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$VideosResponseCopyWith<_VideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
