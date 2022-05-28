import 'package:dartz/dartz.dart';
import 'package:tdd_clean_arc/core/error/failure.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(Params params);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
