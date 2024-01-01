import 'package:flutter/material.dart';
import 'package:memory_revived/homeScreen/Dashboard.dart';
import 'package:memory_revived/homeScreen/main_tab_view.dart';

import '../homeScreen/Food_Tab.dart';
import 'HashCard.dart';
import 'hash.dart';

class CommunityTab extends StatefulWidget {
  const CommunityTab({super.key});

  @override
  State<CommunityTab> createState() => _CommunityTabState();
}

class _CommunityTabState extends State<CommunityTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Text('Community', style: TextStyle(color: Colors.black, fontFamily: 'Poppins SemiBold', fontSize: 23),),
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: GestureDetector(child: Image.asset("assets/images/black_btn.png"),
                  onTap: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MainTabView()));},),
              ),
              bottom: const TabBar(
                unselectedLabelColor: Color(0xff70757a),
                indicatorColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: Colors.black,
                tabs: [
                  Tab(text: "For you"),
                  //Tab(text: "Following"),
                  Tab(text: "Subscribed"),
                ],
              ),
            )
          ],
          body: TabBarView(
            children: [
              ListView.separated(
                padding: EdgeInsets.all(15),
                itemBuilder: (context, index) => HashCard(
                  hash: hashs[index],
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: Color(0xff70757a),
                  thickness: 0.1,
                ),
                itemCount: hashs.length,
              ),
              //Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
