import 'package:dio/dio.dart';

import '../../../../core/errors/server_exception.dart';
import '../../infra/datasources/get_agents_datasource.dart';
import '../../infra/models/agent_model.dart';

class GetAgentsDioDataSourceImp implements GetAgentsDataSource {
  final Dio dio;

  GetAgentsDioDataSourceImp(this.dio);

  @override
  Future<List<AgentModel>> getAgents() async {
    try {
      final response =
          await dio.get('https://valorant-api.com/v1/agents', queryParameters: {
        'language': 'pt-BR',
        'isPlayableCharacter': true,
      });
      final agents = (response.data['data'] as List)
          .map((agent) => AgentModel.fromJson(agent))
          .toList();
      return agents;
    } catch (e) {
      throw const ServerException('Erro ao buscar os agentes');
    }
  }
}
