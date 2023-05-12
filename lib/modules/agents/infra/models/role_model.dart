import 'package:valorant_app/modules/agents/domain/entities/role_entity.dart';

class RoleModel extends RoleEntity {
  RoleModel({
    required super.id,
    required super.name,
    required super.description,
    required super.icon,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      id: json['uuid'],
      name: json['displayName'],
      description: json['description'],
      icon: json['displayIcon'],
    );
  }
}
