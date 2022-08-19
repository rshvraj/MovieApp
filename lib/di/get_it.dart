import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movies/data/core/api_client.dart';
import 'package:movies/data/data_resources/movie_remote_data_source.dart';
import 'package:movies/data/repository/movie_repository_impl.dart';
import 'package:movies/domain/repositories/movies_repository.dart';
import 'package:movies/domain/usecases/get_coming_now.dart';
import 'package:movies/domain/usecases/get_popular.dart';
import 'package:movies/domain/usecases/get_soon.dart';

final getItInstance = GetIt.I;

Future init() async {
  // getItInstance.registerSingleton<Client>(() => Client());

  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));
  getItInstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getItInstance()));
  getItInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItInstance()));
  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));

  getItInstance.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getItInstance()));
}
