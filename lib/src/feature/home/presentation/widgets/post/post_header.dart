import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({ super.key });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 12.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/hacker2.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Text('regina_pahlange', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                    ),
                    Text('nome do cara', style: TextStyle(fontSize: 12,  color: Colors.grey))
                  ],
                ),
              ]
          ),
          Text('...', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,  color: Colors.white))
        ],
      ),
    );
  }
}