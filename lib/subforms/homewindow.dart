import 'package:flutter/material.dart';
import 'package:library_app/subforms/browselibrory.dart';
import 'package:library_app/subforms/newbookentry.dart';

class HomeWindow extends StatelessWidget {
  const HomeWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 30,),
          SizedBox(width: double.infinity,height: 50,child:  ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewBookEntry()));
          }, child: Text("Enter New Book",style: TextStyle(color: Colors.pink,fontSize: 18),),style: ElevatedButton.styleFrom(primary: Colors.lightGreen,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),),

          SizedBox(height: 60,),
          SizedBox(width: double.infinity,height: 50,child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BrowseBook()));
          }, child: Text("Select Book for Reading",style: TextStyle(color: Colors.pink,fontSize: 18),),style: ElevatedButton.styleFrom(primary: Colors.lightGreen,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),),

        ],
      ),
    );
  }
}
