import 'package:dartz/dartz.dart';
import 'package:valorant_app/modules/agents/domain/entities/agent_entity.dart';
import 'package:valorant_app/modules/agents/domain/repositories/agent_repository.dart';
import 'package:valorant_app/modules/agents/infra/datasources/get_agents_datasource.dart';

class AgentRepositoryImp implements AgentRepository {
  final GetAgentsDataSource getAgentsDataSource;

  AgentRepositoryImp(this.getAgentsDataSource);
  @override
  Future<Either<Exception, List<AgentEntity>>> getAgents() async {
    try {
      final agents = await getAgentsDataSource.getAgents();
      return Right(agents);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
