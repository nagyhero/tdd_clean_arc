import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_clean_arc/core/error/failure.dart';
import 'package:tdd_clean_arc/core/usecases/usecase.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements USeCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  const GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params);
  }
}

class Params extends Equatable {
  final int number;

  const Params(this.number);

  @override
  List<Object?> get props => [number];
}
