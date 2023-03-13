import 'package:chatapp/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread
});
}

final User currentUser = User (
  id: 0,
  name: 'Mr Barka',
  imageUrl: 'lib/assets/images/bakar.jpg'
);

final User tesla = User (
    id: 1,
    name: 'Telsa Team',
    imageUrl: 'lib/assets/images/tesla1.jpg'
);
final User peterObi  = User (
    id: 2,
    name: 'Sir PO',
    imageUrl: 'lib/assets/images/Peter-Obi.jpg'
);
final User vp = User (
    id: 3,
    name: 'Sir Datti',
    imageUrl: 'lib/assets/images/Datti.jpg'
);

final User teslaBoss = User (
    id: 4,
    name: 'Elon Musk',
    imageUrl: 'lib/assets/images/elon.jpg'
);

//list of favourite contacts

List<User> favourites = [currentUser, peterObi, teslaBoss, vp, tesla];

//Chats on home screen

List<Message> chats = [
  Message(
      sender: teslaBoss,
      time: '4:30 AM',
      text: 'Lota, you need to join our development team, ASAP',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '6:36 AM',
      text: 'Are you done with the Flutter project yet?',
      isLiked: false,
      unread: true),
  Message(
      sender: peterObi,
      time: '8:00 AM',
      text: 'Lota,Dont worry, we will take back our mandate',
      isLiked: false,
      unread: false),
  Message(
      sender: tesla,
      time: '4:30 AM',
      text: 'Lota, Welcome to Tesla Team',
      isLiked: false,
      unread: false),

  Message(
      sender: vp,
      time: '7:00 AM',
      text: 'Glad to hear that',
      isLiked: false,
      unread: true)
];