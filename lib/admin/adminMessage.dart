// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class AdminMessage extends StatefulWidget {
//   const AdminMessage({super.key});
//
//   @override
//   State<AdminMessage> createState() => _AdminMessageState();
// }
//
// class _AdminMessageState extends State<AdminMessage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Send Message"),
//       ),
//       body:  Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Provider.of<MessageProvider>(context, listen: false)
//                 .setMessage('Hello, User!');
//           },
//           child: Text('Send Message to User'),
//         ),
//       ),
//     );
//   }
// }
