import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numeral/ext.dart';
import 'hash.dart';

class HashCard extends StatelessWidget {
  final Hash hash;
  const HashCard({
    super.key,
    required this.hash,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/profileicon1.png",
            height: 60,
            width: 60,
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      hash.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset(
                      "assets/icons/twitter-verified.svg",
                      color: Color(0xff000000),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "@${hash.username} - ",
                      style: const TextStyle(
                        color: Color(0xff70757a),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      hash.time,
                      style: const TextStyle(
                        color: Color(0xff70757a),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  hash.hash,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/twitter-reply-outline.svg",
                      color: Color(0xff70757a),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      hash.comments.numeral(),
                      style: const TextStyle(
                        color: Color(0xff70757a),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/twitter-retweet.svg",
                      color: Color(0xff70757a),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      hash.shares.numeral(),
                      style: const TextStyle(
                        color: Color(0xff70757a),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/twitter-like-outline.svg",
                      color: Color(0xff70757a),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      hash.likes.numeral(),
                      style: const TextStyle(
                        color: Color(0xff70757a),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/twitter-analytics.svg",
                      color: Color(0xff70757a),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      hash.views.numeral(),
                      style: const TextStyle(
                        color: Color(0xff70757a),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.file_upload_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}