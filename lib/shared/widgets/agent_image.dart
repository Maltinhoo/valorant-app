import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../modules/agents/infra/models/agent_model.dart';

class AgentImage extends StatelessWidget {
  final AgentModel agent;
  const AgentImage({
    super.key,
    required this.agent,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          left: 27,
          child: Material(
            clipBehavior: Clip.antiAlias,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(10)),
              child: Container(
                decoration: const BoxDecoration(color: Color(0xff1F2326)),
              ),
            ),
          ),
        ),
        Positioned(
          right: -110,
          top: -115,
          left: 30,
          child: CachedNetworkImage(
            imageUrl: agent.image,
            fit: BoxFit.cover,
            width: 500,
            height: 1000,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ],
    );
  }
}
