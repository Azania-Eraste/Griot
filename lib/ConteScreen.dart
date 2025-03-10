import 'package:flutter/material.dart';


class Contescreen extends StatefulWidget {
  const Contescreen({super.key});

  @override
  State<Contescreen> createState() => _ContescreenState();
}

class _ContescreenState extends State<Contescreen> {
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
      body: Column(
        children: [

      ],
      ),
    );
  }
}
