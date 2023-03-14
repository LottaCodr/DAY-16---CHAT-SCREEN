import 'package:chatapp/models/user_model.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            margin: isMe
                ? const EdgeInsets.only(top: 8, bottom: 8, left: 80)
                : const EdgeInsets.only(top: 8, bottom: 8),
            decoration: BoxDecoration(
                color: isMe
                    ? Theme.of(context).secondaryHeaderColor
                    : const Color(0xFFFFEFEE),
                borderRadius: isMe
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(15),
                      )
                    : const BorderRadius.only(
                        topRight: Radius.circular(15),
                      )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.time,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Text(
                  message.text,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
        ),
        !isMe ? IconButton(
          onPressed: () {},
          icon: message.isLiked ? const Icon(Icons.favorite):
          const Icon(Icons.favorite_border),
          iconSize: 30,
          color: message.isLiked
          ? Theme.of(context).primaryColor
          : Colors.blueGrey,
        ) : const Text(''),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          widget.user.name,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
            iconSize: 30,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  child: ListView.builder(
                    reverse: true,
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      itemCount: chats.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = chats[index];
                        bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                )),
          ),
        ],
      ),
    );
  }
}
