import 'package:flutter/material.dart';
import 'package:griot/ContesCard.dart';

import 'Models/Conte.dart';

class DetailScreen extends StatefulWidget {

  final List<Conte> contes;
  const DetailScreen({super.key, required this.contes});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: widget.contes.length,
          itemBuilder: (BuildContext context, int index){
        return Contescard(comte: widget.contes[index]);
      }),
    );
  }
}
