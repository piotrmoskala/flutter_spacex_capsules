import 'package:equatable/equatable.dart';

class Capsule extends Equatable {
  final String id;
  final int reuseCount;
  final int landLandings;
  final String serial;
  final String lastUpdate;
  final String status;
  Capsule(
      {this.id,
      this.landLandings,
      this.reuseCount,
      this.serial,
      this.lastUpdate,
      this.status});

  @override
  List<Object> get props => [id, serial];
}
