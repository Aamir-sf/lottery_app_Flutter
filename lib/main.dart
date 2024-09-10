

import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Center(child: Text('Lottery App')),
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
           children:  [
          Center (child:  Text ('Lottery winning number is 4')),
          SizedBox(height: 20,),
          Container(
            height: x == 4 ? 350 : 250,
            width: 300,
            decoration: BoxDecoration(
              color: x == 4? Colors.green : Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 4 ?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.done_all, color: Colors.black,size: 35,),
                  const  SizedBox(height: 15,),
                  Text('Congratulation you have won the lottery , Your number is $x\n', textAlign: TextAlign.center,),
                ],
              ) :

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const  Icon(Icons.error, color: Colors.red,size: 35,),
                  const SizedBox(height: 15,),
                  Text('Better luck next time Your number is $x\ntry again.', textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
               Container (

              child:const Text(
                  'Made by Aamir',
                style: TextStyle(color: Colors.cyan,),

              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);

           setState(() {});
          },
          child:const Icon(Icons.refresh , color: Colors.green, ) ,
        ),
      ),
    );
  }
}
