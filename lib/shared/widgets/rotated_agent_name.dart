import 'package:flutter/material.dart';

import '../../modules/agents/infra/models/agent_model.dart';
import 'outlined_text.dart';

class RotatedAgentName extends StatelessWidget {
  const RotatedAgentName({
    super.key,
    required this.agent,
  });

  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              agent.devName.toUpperCase(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFF4656),
                  fontFamily: 'Drunk Wide'),
            ),
          ),
          OutlinedText(
            agent.name.toUpperCase(),
            fontSize: 58,
            color: Colors.transparent,
            strokeColor: Colors.white,
            strokeWidth: 1,
          ),
        ],
      ),
    );
  }
}
