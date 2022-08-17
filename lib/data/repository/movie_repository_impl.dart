import 'package:movies/data/data_resources/movie_remote_data_source.dart';
import 'package:movies/data/models/movie_model.dart';
import 'package:movies/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<MovieModel>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return movies;
    } on Exception {
      throw UnimplementedError();
    }
  }
}
