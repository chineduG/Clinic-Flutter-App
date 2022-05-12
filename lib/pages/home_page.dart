// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:clinic_app/pages/card.dart';
import 'package:clinic_app/util/color.dart';
import 'package:clinic_app/util/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: bgColor,
          body: Column(children: [
            // app bar
    
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Hello',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(height: 8),
                      Text(
                        'Saint Gabriel',
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
    
                  // profile picture
                  Container(
                    padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.person))
                ],
              ),
            ),
            const SizedBox(height: 25),
    
            // card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(12)),
    
                child: Row(children: [
                  Container(
                    // ignore: prefer_const_constructors
                    height: 100,
                    width: 100,
                    // color: Colors.deepPurple[200],
                    child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_tutvdkg0.json')
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 20),
    
                  // how do you feel
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'How do you feel',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Fill out your medical card right now',
                          style: TextStyle(fontSize: 14),
                        ),
                        Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            )))
                      ],
                    ),
                  )
                ]),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 25),
            // ignore: prefer_const_constructors
    
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple[100]),
                // ignore: prefer_const_constructors
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How can we help you?',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            SizedBox(height: 25),
            // horizontal listview scroll
            // ignore: sized_box_for_whitespace
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CardCategory(
                    iconImagePath: 'lib/icons/teeth.png',
                    cardName: 'Dentist',
                  ),
                  CardCategory(
                    iconImagePath: 'lib/icons/pills.png',
                    cardName: 'Physician',
                  ),
                  CardCategory(
                    iconImagePath: 'lib/icons/eye.png',
                    cardName: 'Ophthalmologists',
                  ),
                  CardCategory(
                    iconImagePath: 'lib/icons/leg.png',
                    cardName: 'Podiatrists',
                  ),
                  CardCategory(
                    iconImagePath: 'lib/icons/surgeon.png',
                    cardName: 'Surgeon',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            
            Expanded(
              child: ListView(
               scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                DoctorCard(
                  doctorImagePath: 'lib/images/doc1.jpg',
                  doctorName: 'Dr, Alfred Ven',
                  doctorProfession: 'Therapist',
                  rating: '4.9',
                ),
    
                 DoctorCard(
                  doctorImagePath: 'lib/images/doc2.jpg',
                  doctorName: 'Dr, Dan Orwell',
                  doctorProfession: 'Psychiatrist',
                  rating: '4.7',
                ),
    
                 DoctorCard(
                  doctorImagePath: 'lib/images/doc1.jpg',
                  doctorName: 'Dr, Gabriel Finn',
                  doctorProfession: 'Counsellor',
                  rating: '3.9',
                ),
    
                 DoctorCard(
                  doctorImagePath: 'lib/images/doc1.jpg',
                  doctorName: 'Dr, Dominic Lamberts',
                  doctorProfession: 'Children Nurse',
                  rating: '4.1',
                ),
    
                 DoctorCard(
                  doctorImagePath: 'lib/images/doc1.jpg',
                  doctorName: 'Dr, Alfred Ven',
                  doctorProfession: 'Therapist',
                  rating: '4.3',
                ),
              ]
             ),)
          ]),
        ),
      ),
    );
  }
}
