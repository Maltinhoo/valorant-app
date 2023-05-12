import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/core/inject/inject.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/shared/widgets/outlined_text.dart';

import '../../../shared/widgets/agent_card.dart';
import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffDF3D4B),
        body: BlocProvider(
          create: (context) => locator<HomeCubit>()..initialize(),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill,
                )),
                child: Padding(
                  padding: const EdgeInsets.only(top: kToolbarHeight - 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      OutlinedText(
                        'Agentes'.toUpperCase(),
                        fontSize: 40,
                        color: Colors.transparent,
                        strokeColor: Colors.white,
                        strokeWidth: 1,
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            (state as HomeLoaded).agents.length,
                            (index) => AgentCard(
                              agent: (state).agents[index] as AgentModel,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
