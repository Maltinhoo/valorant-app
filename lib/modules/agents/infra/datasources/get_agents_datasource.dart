import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';

abstract class GetAgentsDataSource {
  Future<List<AgentModel>> getAgents();
}
