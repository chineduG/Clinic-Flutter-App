import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
    final  String doctorImagePath;
    final String rating;
    final String doctorName;
    final String doctorProfession;

  const DoctorCard({Key? key, 
    required this.doctorImagePath,
     required this.rating,
      required this.doctorName, 
      required this.doctorProfession
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
           color: Colors.deepPurple[100],
           borderRadius: BorderRadius.circular(12,)

        ),
              child: Column(
                children: [
                  // picture of doctor
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      doctorImagePath,
                      height: 100,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.star, 
                      color: Colors.yellow[600],),
                       Text(rating, style: TextStyle(fontWeight: FontWeight.bold),)],
                  ),
                    SizedBox(height: 10),

                  // doctor name

                  Text(doctorName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                    SizedBox(height: 5),

                  Text(doctorProfession),
                  //doctor titlename
                ],
              ),
            ),
    );
  }
}