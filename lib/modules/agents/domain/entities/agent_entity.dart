import 'package:flutter/material.dart';
import 'package:valorant_app/modules/agents/domain/entities/ability_entity.dart';
import 'package:valorant_app/modules/agents/domain/entities/role_entity.dart';

class AgentEntity {
  String id;
  String name;
  String description;
  String image;
  String devName;
  String agentIcon;
  String background;
  List<Color> gradientColors;
  RoleEntity role;
  List<AbilityEntity> abilities;

  AgentEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.devName,
    required this.agentIcon,
    required this.background,
    required this.gradientColors,
    required this.role,
    required this.abilities,
  });
}
