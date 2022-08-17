import 'package:movies/domain/entities/movie_entity.dart';
import 'package:movies/domain/repositories/movies_repository.dart';

class GetTrending {
  final MovieRepository repository;
  GetTrending(this.repository);
  Future<List<MovieEntity>> call() async {
    return await repository.getTrending();
  }
}
