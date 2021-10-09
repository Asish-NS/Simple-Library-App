import 'package:flutter/material.dart';
import 'package:library_app/main.dart';
import 'package:library_app/subforms/homewindow.dart';

class NewBookEntry extends StatelessWidget {
TextEditingController bname=TextEditingController();
TextEditingController auther=TextEditingController();
TextEditingController bno=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          title: Text("Enter New Book"),
        ),
        body:  SingleChildScrollView(
          child: Container(margin: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(controller: bname,
                  decoration: InputDecoration(
                  hintText: "Book Name",
                  labelText: "Book Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
                SizedBox(height: 15,),
                TextField(controller: auther,
                  decoration: InputDecoration(
                    hintText: "Auther",
                    labelText: "Auther",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),),
                SizedBox(height: 15,),
                TextField(controller: bno,
                  decoration: InputDecoration(
                  hintText: "Book Number",
                  labelText: "Book Number",
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LibraryApplication()));
                    }, child: Text("<< Back")),
                    SizedBox(width: 30,),
                    ElevatedButton(onPressed: (){
                      var BookName=bname.text;
                      var BookAuther=auther.text;
                      var BookNo=bno.text;

                      if (BookName=="" || BookNo=="" || BookAuther=="")
                        {
                          print("Enter Full Details of the Book");
                        }
                      else
                        {
                          print("Book Details Successfully entered in Library Database");
                        }
                    }, child: Text("Submit")),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
