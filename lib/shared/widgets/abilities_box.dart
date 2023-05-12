import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../modules/agents/infra/models/agent_model.dart';

class AbilitiesBox extends StatelessWidget {
  const AbilitiesBox({
    super.key,
    required this.agent,
  });

  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1F2326),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Row(
          children: List.generate(
              agent.abilities.length,
              (index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: CachedNetworkImage(
                      height: 50,
                      imageUrl: agent.abilities[index].icon,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ))),
    );
  }
}
