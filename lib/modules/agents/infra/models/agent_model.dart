import 'package:flutter/material.dart';
import 'package:valorant_app/modules/agents/domain/entities/agent_entity.dart';
import 'package:valorant_app/modules/agents/infra/models/ability_model.dart';
import 'package:valorant_app/modules/agents/infra/models/role_model.dart';

class AgentModel extends AgentEntity {
  AgentModel({
    required super.id,
    required super.name,
    required super.description,
    required super.image,
    required super.devName,
    required super.agentIcon,
    required super.background,
    required super.gradientColors,
    required super.role,
    required super.abilities,
  });

  factory AgentModel.fromJson(Map<String, dynamic> json) {
    return AgentModel(
      id: json['uuid'],
      name: json['displayName'],
      description: json['description'],
      image: json['bustPortrait'] ??
          json['fullPortrait'] ??
          json['fullPortraitV2'] ??
          '',
      devName: json['developerName'],
      agentIcon: json['displayIcon'],
      background: json['background'] ?? '',
      gradientColors: List<Color>.from(
          json['backgroundGradientColors'].map((x) => hexToColor(x))),
      role: RoleModel.fromJson(json['role']),
      abilities: List<AbilityModel>.from(json['abilities']
          .where((x) => x['slot'] != 'Passive')
          .map((x) => AbilityModel.fromJson(x))),
    );
  }
}

hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
