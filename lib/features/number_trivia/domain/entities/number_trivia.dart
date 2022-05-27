import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  final int id;
  final int number;
  final String type;
  final bool found;

  const NumberTrivia(this.id, this.number, this.type, {this.found = false});

  @override
  List<Object?> get props => [id, number, type];
}
