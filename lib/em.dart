import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserEmailFromFirestore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Email from Firestore'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users') // Assuming 'users' is the collection where user data is stored
              .doc('currentUserId') // Assuming 'currentUserId' is the document ID of the current user
              .snapshots(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Display loading indicator while fetching data
            }

            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (!snapshot.hasData || !snapshot.data!.exists) {
              return Text('No data available'); // Handle case where no data is available
            }

            // Assuming email field is named 'email' in Firestore
            String userEmail = snapshot.data?['email'];

            return Text('User Email: $userEmail');
          },
        ),
      ),
    );
  }
}
