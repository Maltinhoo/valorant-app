import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:valorant_app/modules/agents/domain/usecases/get_agents_usecase.dart';

import '../../../agents/domain/entities/agent_entity.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetAgentsUseCase getAgentsUseCase;
  HomeCubit(this.getAgentsUseCase) : super(HomeInitial());

  Future<List<AgentEntity>> getAgents() async {
    try {
      final agents = await getAgentsUseCase();
      return agents.fold((l) => [], (r) => r);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> initialize() async {
    if (isClosed) {
      return;
    }
    emit(HomeLoading());
    try {
      final agents = await getAgents();
      emit(HomeLoaded(agents));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }
}
