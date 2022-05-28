import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_clean_arc/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

import 'get_concret_number_trivia.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetConcreteNumberTrivia usecase;
  late int tNumber;
  late NumberTrivia tNumberTrivia;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
    tNumberTrivia = const NumberTrivia(1, 1, 'type');
    tNumber = 1;
  });

  test(
    'should get trivia for the number from the repository',
    () async {
      //arange

      when(mockNumberTriviaRepository.getConcreteNumberTrivia(const Params(1)))
          .thenAnswer((_) async => Right(tNumberTrivia));
      //act
      final result = await usecase.call(const Params(1));
      //assert
      expect(result, equals(Right(tNumberTrivia)));
      verify(
          mockNumberTriviaRepository.getConcreteNumberTrivia(const Params(1)));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
