import 'package:valorant_app/modules/agents/domain/entities/ability_entity.dart';

class AbilityModel extends AbilityEntity {
  AbilityModel({
    required super.slot,
    required super.name,
    required super.description,
    required super.icon,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) {
    return AbilityModel(
      slot: json['slot'],
      name: json['displayName'],
      description: json['description'],
      icon: json['displayIcon'] ?? '',
    );
  }
}
