
import 'package:flutter/material.dart';

class BrowseBook extends StatelessWidget {
  
  var bookname=["The White Tiger","Nectar in a Sieve","The Great Indian Novel","Train to Pakistan","Palace of Illusions","The Guide","In Custody","A Suitable Boy","The Last Song of Dusk","Wings Of Fire"];
  var auther=["Aravind Adiga","Kamala Markandaya","Shashi Tharoor","Khushwant Singh","Chitra Banerjee Divakaruni","R.K Narayana","Anita Desai","Vikram Seth","Siddharth Dhanvant Shanghvi","Dr A.P.J Abdul Kalam"];
  var boookno=["IND-001","IND-002","IND-003","IND-004","IND-005","IND-006","IND-007","IND-008","IND-009","IND-010"];
  var isavailable=[1,0,0,1,1,1,0,1,1,0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          title: Text("Books Available"),
        ),
        body: ListView.builder(itemCount: bookname.length,
            itemBuilder:(context,index){
          return Card(
            child: ListTile(
              title: Text(bookname[index]+"\n By : "+ auther[index] ),
              subtitle: Text("Book Number : "+ boookno[index]),
              leading: Icon(Icons.menu_book_outlined),
              trailing: Icon(Icons.open_with),

            ),
          );
            } ),
      ),
    );
  }
}
