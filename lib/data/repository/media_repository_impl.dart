import 'package:app/data/model/videos.dart';
import 'package:app/data/model/result.dart';
import 'package:app/data/remote/videos_data_source.dart';
import 'package:app/data/repository/videos_repository.dart';
import 'package:app/foundation/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final videosRepositoryProvider =
    Provider((ref) => VideosRepositoryImpl(ref.read));

class VideosRepositoryImpl implements VideosRepository {
  VideosRepositoryImpl(this._reader);

  final Reader _reader;

  late final VideosDataSource _dataSource = _reader(videosDataSourceProvider);

  @override
  Future<Result<VideosResponse>> fetchTrending() {
    return Result.guardFuture(
      () async => await _dataSource.fetchTrending(apiKey: Constants.instance.apiKey),
    );
  }
}
