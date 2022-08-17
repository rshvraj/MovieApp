import 'package:movies/data/models/movie_model.dart';

class MovieResultModel {
  MovieResultModel({
    required this.movies,
  });

  late final List<MovieModel> movies;

  MovieResultModel.fromJson(Map<String, dynamic> json) {
    movies =
        List.from(json['results']).map((e) => MovieModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['results'] = movies.map((e) => e.toJson()).toList();

    return data;
  }
}
