import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewstBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
