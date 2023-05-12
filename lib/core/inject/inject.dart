import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valorant_app/modules/agents/domain/repositories/agent_repository.dart';
import 'package:valorant_app/modules/agents/domain/usecases/get_agents_usecase.dart';
import 'package:valorant_app/modules/agents/external/dio/get_agents_dio_datasource_imp.dart';
import 'package:valorant_app/modules/agents/infra/datasources/get_agents_datasource.dart';
import 'package:valorant_app/modules/agents/infra/repositories/agent_repository_imp.dart';
import 'package:valorant_app/modules/home/presenter/cubit/home_cubit.dart';

GetIt locator = GetIt.instance;

class Locator {
  static void init() {
    GetIt.I.registerLazySingleton<Dio>(() => Dio());

    GetIt.I.registerLazySingleton<GetAgentsDataSource>(
        () => GetAgentsDioDataSourceImp(locator()));

    GetIt.I.registerLazySingleton<AgentRepository>(
        () => AgentRepositoryImp(locator()));

    GetIt.I.registerLazySingleton<GetAgentsUseCase>(
        () => GetAgentsUseCaseImpl(locator()));

    GetIt.I.registerLazySingleton<HomeCubit>(() => HomeCubit(locator()));
  }
}
