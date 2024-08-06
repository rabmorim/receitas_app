import 'package:flutter/material.dart';
import 'package:receitas_app/detalhe.dart';

class Layoult extends StatefulWidget{
  const Layoult({super.key});

  @override
  State  createState() => LayoultState();

}

class LayoultState extends State<Layoult>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Começo appbar
        appBar: AppBar(
          title: const Text(
            "TodoSabor",
            style: TextStyle(
              color: Colors.white70,
              letterSpacing: BorderSide.strokeAlignCenter,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.amber.shade200,
          leadingWidth: 45,
          leading:Transform.translate(
            offset: const Offset(5, 0),
            child: Image.asset('img/chef.png')
            ),
        ) ,
        
        //Começo do body
        body:  const SingleChildScrollView(
          child: Column(
            children:<Widget> [
              //Informações do produto
              Detalhe(),
              

              //Ingredientes


            ],
          ),
        ) ,
        
        //Começo do bottom navigation bar
        //bottomNavigationBar: BottomNavigationBar(items: items),

      ),
    );
  }

}