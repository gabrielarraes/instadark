import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({ super.key });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        children: [
          // first row is actions row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.favorite, color: Colors.red, size: 30.0),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.mode_comment_outlined, color: Colors.white, size: 26.0),
                  ),
                  Transform(
                    transform: Matrix4.rotationZ(-0.5),
                    alignment: FractionalOffset.center,
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 6.0, left: 6.0),
                      child: Icon(Icons.send_outlined, color: Colors.white, size: 26.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 64.0),
                    child: Wrap(
                      spacing: 5.0,
                      children: [
                        Container(width: 5, height: 5, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent)),
                        Container(width: 5, height: 5, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent)),
                        Container(width: 5, height: 5, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent)),
                      ],
                    ),
                  )
                ],
              ),
              const Icon(Icons.bookmark_border, color: Colors.white, size: 30.0),
            ]
          )
        ],
      ),
    );
  }
}