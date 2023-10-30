import 'package:flutter/material.dart';
import 'package:red_chat/models/message.dart';
import 'package:red_chat/screens/chat_screen.dart';

class ChatListItem extends StatelessWidget {
  final Message chat;

  const ChatListItem({
    required this.chat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatUser = chat.sender;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChatScreen(user: chatUser),
          ),
        );
      },
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 5),
        decoration: BoxDecoration(
          color: chat.unread ? Colors.red.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(chatUser.imageUrl),
              radius: 35,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatUser.name,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      chat.text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    chat.time,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (chat.unread)
                    Container(
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      child: const Text(
                        "New",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
