import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({ super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purpleAccent,
                Colors.purpleAccent,
                Colors.redAccent,
                Colors.orange
              ]
            )
          ),
          child: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/hacker.jpg'),
                fit: BoxFit.fill
              )
            ),
          ),
        ),
        const Center(
          child: Text(
            'doctor_geller',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12
            )
          ),
        )
      ],
    );
  }
}