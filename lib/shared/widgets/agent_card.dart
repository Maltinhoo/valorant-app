import 'package:flutter/material.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/shared/widgets/rotated_agent_name.dart';

import 'abilities_box.dart';
import 'agent_image.dart';

class AgentCard extends StatelessWidget {
  final AgentModel agent;
  const AgentCard({super.key, required this.agent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 320,
        height: 600,
        child: Stack(
          children: [
            Positioned.fill(
              right: 10,
              bottom: 20,
              child: AgentImage(agent: agent),
            ),
            Positioned(
              top: 25,
              left: -6,
              child: RotatedAgentName(agent: agent),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: AbilitiesBox(agent: agent),
            ),
          ],
        ),
      ),
    );
  }
}
