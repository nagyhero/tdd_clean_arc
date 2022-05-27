import 'package:dartz/dartz.dart';
import 'package:tdd_clean_arc/core/error/failure.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
