import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class PesonEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocatonEntity origin;
  final LocatonEntity location;
  final String image;
  final List<String> episode;
  final DateTime created;

  const PesonEntity(
      {@required this.id,
      @required this.name,
      @required this.status,
      @required this.species,
      @required this.type,
      @required this.gender,
      @required this.origin,
      @required this.location,
      @required this.image,
      @required this.episode,
      @required this.created});

  @override
  List<Object> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        origin,
        location,
        image,
        episode,
        created
      ];
}

class LocatonEntity {
  final String name;
  final String url;

  const LocatonEntity({this.name, this.url});
}
