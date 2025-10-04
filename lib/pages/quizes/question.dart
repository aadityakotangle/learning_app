import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/pages/quizes/quiz_meu.dart';
import 'package:learning_app/service/database.dart';

class Question extends StatefulWidget {
  String category;
  Question({required this.category});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool show = false;

  getontheload() async {
    QuizStream = await DatabaseMethods().getCategoryQuiz(widget.category);
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Stream? QuizStream;
  PageController controller = PageController();
  Widget allQuiz() {
    return StreamBuilder(
        stream: QuizStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? PageView.builder(
                  controller: controller,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(32))),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 40.0),
                                child:  Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFF818181),
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    ds["question"],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),




                                // ClipRRect(
                                //     borderRadius: BorderRadius.circular(20),
                                //     child: Image.asset(
                                //       "images/boy.jpg",
                                //       height: 300,
                                //       width: MediaQuery.of(context).size.width,
                                //       fit: BoxFit.cover,
                                //     ))


                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                show = true;
                                setState(() {});
                              },
                              child: show
                                  ? Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  ds["answer"] == ds["option1"]
                                                      ? Colors.green
                                                      : Colors.red,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Text(ds["option1"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  :    Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF818181),
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  ds["option1"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),



                            SizedBox(
                              height: 20.0,
                            ),



                            GestureDetector(
                              onTap: () {
                                show = true;
                                setState(() {});
                              },
                              child: show
                                  ? Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                        ds["answer"] == ds["option2"]
                                            ? Colors.green
                                            : Colors.red,
                                        width: 1.5),
                                    borderRadius:
                                    BorderRadius.circular(15)),
                                child: Text(ds["option2"],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500)),
                              )
                                  :    Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF818181),
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  ds["option2"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),



                            SizedBox(
                              height: 20.0,
                            ),


                            GestureDetector(
                              onTap: () {
                                show = true;
                                setState(() {});
                              },
                              child: show
                                  ? Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                        ds["answer"] == ds["option3"]
                                            ? Colors.green
                                            : Colors.red,
                                        width: 1.5),
                                    borderRadius:
                                    BorderRadius.circular(15)),
                                child: Text(ds["option3"],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500)),
                              )
                                  :    Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF818181),
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  ds["option3"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),


                            SizedBox(
                              height: 20.0,
                            ),


                            GestureDetector(
                              onTap: () {
                                show = true;
                                setState(() {});
                              },
                              child: show
                                  ? Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                        ds["answer"] == ds["option4"]
                                            ? Colors.green
                                            : Colors.red,
                                        width: 1.5),
                                    borderRadius:
                                    BorderRadius.circular(15)),
                                child: Text(ds["option4"],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500)),
                              )
                                  :    Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF818181),
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  ds["option4"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),

                            SizedBox(height: 10.0,),

                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  show=false;
                                });
                                controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                      child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFF084840),)),
                                ],
                              ),
                            )



                          ],
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084840),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Color(0xFFf35b32),
                        borderRadius: BorderRadius.circular(60)),
                    child: Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (contex)=>Quiz_menu()));
                          },
                          child: Icon(
                                                Icons.arrow_back_ios,
                                                color: Colors.white,
                                              ),
                        )),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Text(
                    widget.category,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: allQuiz()),
            // Expanded(
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(32))),
            //     child: Column(
            //       children: [
            //         Padding(
            //             padding:EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0) ,
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(20),
            //                 child: Image.asset("images/boy.jpg",height: 300,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,))),
            //         SizedBox(height: 20.0,),
            //         Container(
            //           width: MediaQuery.of(context).size.width,
            //           padding: EdgeInsets.all(15),
            //           decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),),borderRadius: BorderRadius.circular(15)),
            //           child: Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w500),),
            //         ),
            //
            //         SizedBox(height: 20.0,),
            //         Container(
            //           width: MediaQuery.of(context).size.width,
            //           padding: EdgeInsets.all(15),
            //           decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),),borderRadius: BorderRadius.circular(15)),
            //           child: Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w500),),
            //         ),
            //
            //         SizedBox(height: 20.0,),
            //         Container(
            //           width: MediaQuery.of(context).size.width,
            //           padding: EdgeInsets.all(15),
            //           decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),),borderRadius: BorderRadius.circular(15)),
            //           child: Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w500),),
            //         ),
            //
            //         SizedBox(height: 20.0,),
            //         Container(
            //           width: MediaQuery.of(context).size.width,
            //           padding: EdgeInsets.all(15),
            //           decoration: BoxDecoration(border: Border.all(color: Color(0xFF818181),),borderRadius: BorderRadius.circular(15)),
            //           child: Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w500),),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
