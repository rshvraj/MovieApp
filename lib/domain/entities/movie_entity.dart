import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String posterPAth;
  final String releaseDate;
  final String overview;
  final String backdropPath;
  final num voteAverage;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.posterPAth,
    required this.releaseDate,
    required this.overview,
    required this.backdropPath,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [id, title];

  @override
  bool get stringify => true;
}
