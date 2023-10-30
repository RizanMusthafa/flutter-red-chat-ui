import 'package:red_chat/models/message.dart';
import 'package:red_chat/models/user.dart';

final User currentUser = User(
  id: 0,
  name: "Smith",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/0.jpg",
);

final User greg = User(
  id: 1,
  name: "Greg",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/1.jpg",
);

final User james = User(
  id: 2,
  name: "James",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/2.jpg",
);

final User john = User(
  id: 3,
  name: "John",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/3.jpg",
);

final User olivia = User(
  id: 4,
  name: "Olivia",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/female/4.jpg",
);

final User sam = User(
  id: 5,
  name: "Sam",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/5.jpg",
);

final User sophia = User(
  id: 6,
  name: "Olivia",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/female/6.jpg",
);

final User steven = User(
  id: 7,
  name: "Steven",
  imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/7.jpg",
);

List<User> favorites = [sam, steven, olivia, john, greg];

List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
