import 'package:flutter/material.dart';
import 'package:library_app/subforms/homewindow.dart';

void main()=>runApp(LibraryApplication());
class LibraryApplication extends StatelessWidget {
  const LibraryApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TVM Library"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: HomeWindow(),
      ),
    );
  }
}





