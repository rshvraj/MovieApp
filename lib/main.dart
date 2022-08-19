import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movies/data/core/api_client.dart';
import 'package:movies/data/data_resources/movie_remote_data_source.dart';
import 'package:movies/data/repository/movie_repository_impl.dart';
import 'package:movies/domain/entities/no_params.dart';
import 'package:movies/domain/repositories/movies_repository.dart';
import 'package:movies/domain/usecases/get_trending.dart';
import 'package:pedantic/pedantic.dart ';
import 'di/get_it.dart' as getIt;

void main() async {
  //ApiClient passed as input parameter for thr constructor
  /** unawaited(getIt.init());

  GetTrending getTrending = getIt.getItInstance<GetTrending>();
  final Either<AppError, List<MovieEntity>> eitherResponse =
      await getTrending(NoParams());
  eitherResponse.fold(
    (l) {
      print('error');
      print(l);
    },
    (r) {
      print('List of movies');
      print(r);
    },
  ); */
  ApiClient apiClient = ApiClient(Client());
  MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  MovieRepository movieRepository = MovieRepositoryImpl(dataSource);
  GetTrending getTrending = GetTrending(movieRepository);
  await getTrending(NoParams());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container());
  }
}
