import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

import '../service/database.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  String?value;



  uploadItems()async{
    if(questioncontroller.text!=""
        && option1controller.text!=""
        && option2controller.text!=""
        && option3controller.text!=""
        && option4controller.text!=""
        && answercontroller.text!=""
    )
      {
        //String addId=randomAlphaNumeric(10);

       // Reference firebaseStorageRef=FirebaseStorage.instance.ref().child(addId);
        Map<String,dynamic> addQuiz={
          "question":questioncontroller.text,
          "option1":option1controller.text,
          "option2":option2controller.text,
          "option3":option3controller.text,
          "option4":option4controller.text,
          "answer":answercontroller.text,
        };

        await DatabaseMethods().addQuizCategory(addQuiz, value!).then((value){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orange,
              content: Text("Quiz has been added successfully",style: TextStyle(fontSize: 18.0),)));
        });

      }
  }

  final List<String> quizitems=["English","Hindi","Agri","Krishi","Science","Vigyan","Social science","Samajik vigyan"];


  TextEditingController questioncontroller=new TextEditingController();
  TextEditingController option1controller=new TextEditingController();
  TextEditingController option2controller=new TextEditingController();
  TextEditingController option3controller=new TextEditingController();
  TextEditingController option4controller=new TextEditingController();
  TextEditingController answercontroller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Quiz",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 200.0),
          child: (
          Column(children: [
            Text("Upload the quiz Question",style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.w700),),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: questioncontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Question",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w600)
                ),
              ),
            ),
            SizedBox(height: 20,),


            Text("Option 1",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: option1controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Option 1",
                  hintStyle: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w600)
                ),
              ),
            ),

            SizedBox(height: 20,),

            Text("Option 2",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: option2controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 2",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w600)
                ),
              ),
            ),

            SizedBox(height: 20,),

            Text("Option 3",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: option3controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 3",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w600)
                ),
              ),
            ),

            SizedBox(height: 20,),
            Text("Option 4",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: option4controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Option 4",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w600)
                ),
              ),
            ),

            SizedBox(height: 20,),
            Text("Correct Answer",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFececf8),borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: answercontroller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Correct Answer",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w600)
                ),
              ),
            ),

            SizedBox(height: 40.0,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffececf8),
                borderRadius: BorderRadius.circular(10)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(items: quizitems.map((item) => DropdownMenuItem(value:item,child: Text(item,style: TextStyle(color: Colors.black,fontSize: 18.0),))).toList(), onChanged: (value) {
                  this.value=value;
                },
                dropdownColor: Colors.white,
                hint: Text("Select Category",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                value: value,),
              ),
            ),

            SizedBox(height: 30.0,),
            GestureDetector(
              onTap: (){
                uploadItems();
              },
              child: Center(
                child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 22.0,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),),
            )

          ],)
          ),
        ),
      ),
    );
  }
}
