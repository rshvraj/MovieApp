import 'package:dartz/dartz.dart';
import 'package:movies/domain/entities/movie_entity.dart';
import 'package:movies/domain/repositories/movies_repository.dart';
import 'package:movies/domain/usecases/usecase.dart';

import '../entities/app_error.dart';
import '../entities/no_params.dart';

class GetComingSoon extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository repository;
  GetComingSoon(this.repository);
  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getComingSoon();
  }
}
