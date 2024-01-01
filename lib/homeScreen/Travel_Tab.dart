import 'package:flutter/material.dart';

import 'Clickable_image.dart';

class TravelTab extends StatefulWidget {
  const TravelTab({super.key});

  @override
  State<TravelTab> createState() => _TravelTabState();
}

class _TravelTabState extends State<TravelTab> {
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
          "Travel",
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
              child:
              Image.asset(
                "assets/images/more_btn.png",
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('  Discover',
                style: TextStyle(
                  color: Color(0xff1D1617),
                  fontSize: 25,
                  fontFamily: 'Poppins SemiBold',
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              Image.asset('assets/images/t.png',
                height: 260,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xff1D1617),
                  fontSize: 20,
                  fontFamily: 'Poppins SemiBold',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClickableImageBox2(
                          imagePath: 'assets/images/t1.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const TravelTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/t2.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const TravelTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/t3.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const TravelTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/t4.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const TravelTab()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Popular Places',
                style: TextStyle(
                  color: Color(0xff1D1617),
                  fontSize: 20,
                  fontFamily: 'Poppins SemiBold',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/t5.webp',
                        height: 200,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 400,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ExpansionTile(
                            title: Center(
                              child: Text('Best places to hike in Asia 2023',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Poppins Regular',
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            children: [
                              Text(
                                '1. Annapurna Circuit, Nepal\n'
                                '\n'
                                '2. Mount Fuji, Japan\n'
                                    '\n'
                                    '3. Mount Huangshan, China\n'
                                '\n'
                                '4.  Mount Kinabalu, Malaysia\n'
                                '\n'
                                '5. Markha Valley Trek, India\n',
                                style: TextStyle(fontSize: 18, fontFamily: 'Poppins Regular', fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/t6.jpg',
                        height: 200,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 400,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ExpansionTile(
                            title: Center(
                              child: Text('Best Beaches in Asia 2023',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Poppins Regular',
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            children: [
                          Text(
                          '1.  Bali Island, Indonesia\n'
                          '\n'
                          '2. Phu Quoc Island, Vietnam\n'
                          '\n'
                          '3. Phi Phi Islands, Thailand\n'
                          '\n'
                          '4.  Ngapali Beach, Myanmar\n'
                          '\n'
                          '5. Langkawi, Malaysia\n',
                            style: TextStyle(fontSize: 18, fontFamily: 'Poppins Regular', fontStyle: FontStyle.italic),
                          ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
