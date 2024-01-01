import 'package:flutter/material.dart';
import 'Clickable_image.dart';

class WorkoutTab extends StatefulWidget {
  const WorkoutTab({super.key});

  @override
  State<WorkoutTab> createState() => _WorkoutTabState();
}

class _WorkoutTabState extends State<WorkoutTab> {
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
          "Workout",
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
              Image.asset('assets/images/workout_discover.jpg',
                height: 230,
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
                          imagePath: 'assets/images/Cardio.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const WorkoutTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/Flexibility.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const WorkoutTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/Core.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const WorkoutTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/Strength.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const WorkoutTab()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Popular Plans',
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
                      child: Image.asset('assets/images/7days.gif',
                        height: 300,
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
                              child: Text('7 days workout plan',
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
                                '•Monday: Cardio\n'
                                '\n'
                          '•Tuesday: Lower body\n'
                                '\n'
                          '•Wednesday: Upper body and core\n'
                                '\n'
                          '•Thursday: Active rest and recovery\n'
                                    '\n'
                          '•Friday: Lower body with a focus on glutes\n'
                                    '\n'
                              '•Saturday: Upper body\n'
                                '\n'
                              '•Sunday: Rest and recovery',
                                style: TextStyle(fontSize: 14),
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
