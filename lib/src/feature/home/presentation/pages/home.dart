import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/header/home_insta_bar.dart';
import '../widgets/post/post.dart';
import '../widgets/story/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: InstaBar(),
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border(
                              bottom: BorderSide(width: 1, color: Colors.grey.shade900)
                          )
                      ),
                      child: Center(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                            StoryBox(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: const [
                      Post(),
                      Post()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar()
    );
  }
}