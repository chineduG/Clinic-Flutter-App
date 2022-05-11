// ignore_for_file: avoid_unnecessary_containers

import 'package:clinic_app/util/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bgColor,
      body: Column(

    children:  [
        // app bar

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 Text(
                   'Hello', 
                 style: TextStyle(
                   fontWeight: FontWeight.bold, 
                   fontSize: 18)),
               SizedBox(height: 8),
               Text(
                 'Saint Gabriel', 
                 style: TextStyle(
                   fontSize: 24),
                   )
               ],
             ),

             // profile picture
             Container(
               decoration: BoxDecoration(
                 color:Colors.deepPurple[100],
                 borderRadius: BorderRadius.circular(12)
               ),
               child: const Icon(Icons.person))
            ],
          ),  
        ),
        const SizedBox(height: 25),
        // card
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            child: Row(children:  [
              // animation
               Container(
                 padding: const EdgeInsets.all(20),
                 decoration: const BoxDecoration(color: Colors.pink),
                height: 100,
                width: 100,
                color: Colors.deepPurple,
              ),
              const SizedBox(width: 20),
              // how do you feel
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                  const Text('How do you feel', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  const SizedBox(height: 8),
                  const Text('Fill out your medical card right now', style: TextStyle(fontSize: 14),),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration:  BoxDecoration(
                 color:Colors.deepPurple[300],
                 borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                      child:  Text('Get Started', style: TextStyle(color: Colors.white),)))
              
                ],
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}