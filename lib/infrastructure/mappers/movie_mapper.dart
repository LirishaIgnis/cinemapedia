import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath !='') 
      ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
      :'https://i.etsystatic.com/19289482/r/il/d3a4fb/4730259787/il_fullxfull.4730259787_8z2z.jpg',
      genreIds: moviedb.genreIds.map((e)=>e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: ( moviedb.posterPath !='')
      ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
       :'https://i.etsystatic.com/19289482/r/il/d3a4fb/4730259787/il_fullxfull.4730259787_8z2z.jpg',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount
      );
}
