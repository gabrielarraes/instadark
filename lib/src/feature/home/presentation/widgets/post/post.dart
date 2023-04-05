import 'package:flutter/cupertino.dart';
import 'package:instadark/src/feature/home/presentation/widgets/post/post_content.dart';
import 'package:instadark/src/feature/home/presentation/widgets/post/post_footer.dart';
import 'package:instadark/src/feature/home/presentation/widgets/post/post_header.dart';

class Post extends StatelessWidget {
  const Post({ super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PostHeader(),
        PostBody(),
        const PostFooter(),
      ],
    );
  }
}