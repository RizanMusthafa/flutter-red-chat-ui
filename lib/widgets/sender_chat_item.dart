import 'package:flutter/material.dart';
import 'package:red_chat/mock_data/data.dart';
import 'package:red_chat/models/message.dart';

class SenderChatItem extends StatelessWidget {
  final Message chat;

  const SenderChatItem({required this.chat, super.key});

  @override
  Widget build(BuildContext context) {
    final bool isCurrentUser = chat.sender.id == currentUser.id;
    final ColorScheme colorTheme = Theme.of(context).colorScheme;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment:
          isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.75,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isCurrentUser ? colorTheme.secondary : Colors.red.shade50,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isCurrentUser ? 10 : 0),
              topRight: Radius.circular(isCurrentUser ? 0 : 10),
              bottomRight: Radius.circular(isCurrentUser ? 0 : 10),
              bottomLeft: Radius.circular(isCurrentUser ? 10 : 0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  chat.time,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                chat.text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        if (!isCurrentUser)
          IconButton(
            onPressed: () {},
            icon: Icon(
              chat.isLiked ? Icons.favorite : Icons.favorite_border,
              color: chat.isLiked ? Colors.red : Colors.blueGrey,
              size: 30,
            ),
          )
      ],
    );
  }
}
