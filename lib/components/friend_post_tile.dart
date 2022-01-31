import 'package:flutter/material.dart';
import 'circle_image.dart';
import '../models/post.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImageSecound(
            imageRadius: 20, assetImage: AssetImage(post.profileImageUrl)),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(post.comment),
                Text('${post.timestamp} mins ago',
                    style: const TextStyle(fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
