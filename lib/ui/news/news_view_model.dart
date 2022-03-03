import 'package:app/data/model/news.dart';
import 'package:app/data/model/videos.dart';
import 'package:app/data/model/result.dart';
import 'package:app/data/repository/videos_repository.dart';
import 'package:app/data/repository/media_repository_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final videosViewModelProvider =
    ChangeNotifierProvider((ref) => VideosViewModel(ref.read));

class VideosViewModel extends ChangeNotifier {
  VideosViewModel(this._reader);

  final Reader _reader;

  late final VideosRepository _repository = _reader(videosRepositoryProvider);

  // Result use case No.1
  Result<VideosResponse>? _videos;

  Result<VideosResponse>? get videos => _videos;

  Future<void> fetchTrending() {
    return _repository
        .fetchTrending()
        .then((value) => _videos = value)
        .whenComplete(notifyListeners);
  }
}
