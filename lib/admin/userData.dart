import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Data"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("users").snapshots(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.active){
            if(snapshot.hasData){
              return ListView.builder(itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    child: Text("${index+1}"),
                  ),
                  title: Text("${snapshot.data?.docs[index]["Name"]}"),
                  subtitle: Text("${snapshot.data?.docs[index]["Email"]}"),

                );




              },itemCount:snapshot.data?.docs.length,);
            }
            else{
              return Center(child: Text("${snapshot.hasError.toString()}"),);
            }

          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }

        },
      ),

    );

  }
}


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
//
//
// class BookmarkScreen extends StatefulWidget {
//   BookmarkScreen({super.key});
//
//   @override
//   State<BookmarkScreen> createState() => _BookmarkScreenState();
// }
//
// class _BookmarkScreenState extends State<BookmarkScreen> {
//
//
//   CollectionReference reference =
//   FirebaseFirestore.instance.collection("users");
//   late Stream<QuerySnapshot> _plantItems;
//
//   @override
//   void initState() {
//     super.initState();
//     _plantItems = reference.snapshots();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('BookMark'),
//       ),
//       body: StreamBuilder(
//         stream: _plantItems,
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           if (snapshot.hasError) {
//             return Text(snapshot.error.toString());
//           }
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.connectionState == ConnectionState.active) {
//             QuerySnapshot querySnapshot = snapshot.data;
//           }
//           return ListView.builder(
//             itemCount: snapshot.data?.docs.length,
//             itemBuilder: (context, index) {
//               DocumentSnapshot document = snapshot.data.docs[index];
//               return Card(
//                 color:
//                 isDark ? HexColor(RgreenGaryColor) : HexColor(RGreenColor),
//                 shadowColor: HexColor(RGreenColor),
//                 child: ListTile(
//                   leading: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Image(
//                         height: 60,
//                         width: 70,
//                         fit: BoxFit.cover,
//                         image: NetworkImage(document['plant_image']),
//                       )),
//                   title: Text(
//                     document['plant_name'],
//                     maxLines: 1,
//                   ),
//                   subtitle: Text(
//                     document['plant_medicanalProp'],
//                     maxLines: 1,
//                   ),
//                   titleTextStyle: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: isDark
//                           ? HexColor(RBlackColor)
//                           : HexColor(RMidnightBlueColor)),
//                   subtitleTextStyle: TextStyle(color: Colors.black),
//                   minVerticalPadding: 10,
//                   onTap: () {
//                     print(document['plant_name']);
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DetailsScreen(
//                             plantName: document['plant_name'],
//                             plantDesc: document['plant_desc'],
//                             plantImage: document['plant_image'],
//                             plantMedicinalProp: document['plant_medicanalProp'],
//                           ),
//                         ));
//                   },
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }