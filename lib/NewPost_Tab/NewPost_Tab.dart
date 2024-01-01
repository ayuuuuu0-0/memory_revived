import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewPost_Tab extends StatefulWidget {
  const NewPost_Tab({super.key});

  @override
  State<NewPost_Tab> createState() => _NewPost_TabState();
}

class _NewPost_TabState extends State<NewPost_Tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/images/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "New Hash",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontSize: 25,
              fontFamily: 'Poppins Semibold',
              fontWeight: FontWeight.w800),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/images/more_btn.png",
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: 250,
        color: Color(0xFFF6F6F6),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/profileicon2.png",
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
                              'Harnika Aujla ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                                SvgPicture.asset(
                                  "assets/icons/twitter-verified.svg",
                                  color: Color(0xff000000),
                                ),
                                ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                Text(
                                  "@nikkk ",
                                  style: const TextStyle(
                                    color: Color(0xff70757a),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Write your post here...',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, // Make the border invisible
                      ),
                    ),
                    maxLines: 3,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Send',
                        style: TextStyle(
                          color: Color(0xff1D1617),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
