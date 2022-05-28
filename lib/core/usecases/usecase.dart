import 'package:dartz/dartz.dart';
import 'package:tdd_clean_arc/core/error/failure.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

abstract class USeCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
