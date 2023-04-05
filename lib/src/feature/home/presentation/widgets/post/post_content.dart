import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  final List<String> images = ['assets/images/hacker.jpg', 'assets/images/hacker2.jpg'];

  PostBody({ super.key });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, i) => Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.amber),
              child: SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(images[i])
                ),
              )
            ),
            Positioned(
              top: 10.0,
              right: 10.0,
              child: Container(
                height: 25,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(50.0)
                ),
                child: Center(
                  child: Text(
                    '${images.indexOf(images[i]) + 1}/${images.length}',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}






