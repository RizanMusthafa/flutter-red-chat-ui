import 'package:flutter/material.dart';
import 'package:red_chat/models/message.dart';

class MyChatItem extends StatelessWidget {
  final Message chat;
  const MyChatItem({required this.chat, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          // height: 100,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Text(chat.time),
        ),
      ],
    );
  }
}
