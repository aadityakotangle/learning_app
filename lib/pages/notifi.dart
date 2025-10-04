import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      // body: Center(
      //   child: Consumer<MessageProvider>(
      //     builder: (context, messageProvider, _) {
      //       return Text(messageProvider.message);
      //     },
      //   ),
      // ),
    );
  }
}
