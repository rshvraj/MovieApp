import 'package:movies/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<List<MovieEntity>> getTrending();
}
