import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

abstract class PersonSearchState extends Equatable {
  const PersonSearchState();

  @override
  List<Object> get props => [];
}

class PersonEmpty extends PersonSearchState {}

class PersonSearchLoading extends PersonSearchState {}

class PersonSearchLoaded extends PersonSearchState {
  final List<PesonEntity> pesons;

  PersonSearchLoaded({this.pesons});

  @override
  List<Object> get props => [pesons];
}

class PersonSearchError extends PersonSearchState {
  final String message;

  const PersonSearchError({@required this.message});

  @override
  List<Object> get props => [message];
}