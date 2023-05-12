import 'package:dartz/dartz.dart';
import 'package:valorant_app/modules/agents/domain/entities/agent_entity.dart';

import '../repositories/agent_repository.dart';

abstract class GetAgentsUseCase {
  Future<Either<Exception, List<AgentEntity>>> call();
}

class GetAgentsUseCaseImpl implements GetAgentsUseCase {
  final AgentRepository repository;

  GetAgentsUseCaseImpl(this.repository);

  @override
  Future<Either<Exception, List<AgentEntity>>> call() async {
    return await repository.getAgents();
  }
}
