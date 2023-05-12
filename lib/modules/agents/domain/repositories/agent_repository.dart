import 'package:dartz/dartz.dart';

import '../entities/agent_entity.dart';

abstract class AgentRepository {
  Future<Either<Exception, List<AgentEntity>>> getAgents();
}
