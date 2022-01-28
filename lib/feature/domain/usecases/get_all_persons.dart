import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';

class GetAllPersons extends UseCase<List<PesonEntity>, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPersons(this.personRepository);

  Future<Either<Failure, List<PesonEntity>>> call(
      PagePersonParams params) async {
    return await personRepository.getAllPersons(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;

  const PagePersonParams({@required this.page});

  @override
  List<Object> get props => [page];
}