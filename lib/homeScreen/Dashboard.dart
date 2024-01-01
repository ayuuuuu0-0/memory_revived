import 'package:flutter/material.dart';
import 'package:memory_revived/homeScreen/Food_Tab.dart';
import 'package:memory_revived/homeScreen/Travel_Tab.dart';
import 'package:memory_revived/homeScreen/featured.dart';
import 'Clickable_image.dart';
import 'Meditation_Tab.dart';
import 'Workout_Tab.dart';
import 'notification_View.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  userPhotoUrl = await ref.getDownloadURL();

  final PageController _controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe3e6ef),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/profileicon1.png', height: 60,),
                        const SizedBox(width: 8,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Back,",
                              style: TextStyle(
                                  fontFamily: 'Poppins Regular',
                                  color: Color(0xff786F72),
                                  fontSize: 15),
                            ),
                            Text(
                              "User",
                              style: TextStyle(
                                  color: Color(0xff1D1617),
                                  fontSize: 20,
                                  fontFamily: 'Poppins Semibold',
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationView(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        "assets/images/notification_active.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "What's on your mind today?",
                        style: TextStyle(
                            color: Color(0xff1D1617),
                            fontSize: 16,
                            fontFamily: 'Poppins Regular',
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClickableImageBox(
                      imagePath: 'assets/images/workout.png',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkoutTab()));
                      },
                    ),
                    const SizedBox(width: 10,),
                    ClickableImageBox(
                      imagePath: 'assets/images/food.png',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FoodTab()));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClickableImageBox(
                      imagePath: 'assets/images/meditation.png',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MeditationTab()));
                      },
                    ),
                    const SizedBox(width: 10,),
                    ClickableImageBox(
                      imagePath: 'assets/images/travel.png',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TravelTab()));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                const Text('  Featured',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins SemiBold'),
                ),
                const SizedBox(height: 10,),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/images/scenery.jpg'),
                    title: const Text('Mental Health Awareness', style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontWeight: FontWeight.w400),),
                    subtitle: const Text('• 10 mins read '),
                    trailing: InkWell(
                      child: const Icon(Icons.arrow_forward_ios_sharp),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Featured1()));
                        },
                    ),
                  ),
                ),
                const SizedBox(height: 8,),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/images/pyschology2.png'),
                    title: const Text('Pyschological Help', style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontWeight: FontWeight.w400),),
                    subtitle: const Text('• 10 mins read '),
                    trailing: InkWell(
                      child: const Icon(Icons.arrow_forward_ios_sharp),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Featured2()));
                      },
                  ),
                  ),
                ),
                const SizedBox(height: 8,),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/images/rship.jpg'),
                    title: Text('Relationship Advises', style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontWeight: FontWeight.w400),),
                    subtitle: Text('• 10 mins read '),
                    trailing: InkWell(
                      child: const Icon(Icons.arrow_forward_ios_sharp),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Featured3()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/images/scenery.jpg',),
                    title: Text('Pyschological Advises', style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontWeight: FontWeight.w400),),
                    subtitle: Text('• 10 mins read '),
                    trailing: InkWell(
                      child: const Icon(Icons.arrow_forward_ios_sharp),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Featured1()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('  Tips',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins SemiBold'),
                ),
                SizedBox(
                  height: 120, // Card height
                  child: PageView.builder(
                    itemCount: 5,
                    controller: _controller,
                    itemBuilder: (context, index) {
                      List<Color> cardColors = [
                        Color(0xFFE52E2E),
                        Color(0xFF2832A8),
                        Color(0xFF5506F5),
                        Color(0xFFBC45C2),
                        Color(0xFF0E9B81),
                      ];
                      List<String> cardTitles = [
                        'Knowledge is Empowerment:',
                        'Structure Brings Comfort:',
                        'Speak Simply and Clearly:',
                        'Self-Care is Essential:',
                        'Safety First:'
                      ];
                      List<String> cardTexts = [
                        'Educate yourself about the specific type of dementia to better address the needs of your loved one.',
                        'Establishing a consistent daily routine provides comfort and reduces confusion for individuals with dementia.',
                        'Use clear, simple language, and maintain eye contact for effective communication with your loved one.',
                        'Prioritize your well-being by taking breaks, seeking support, and maintaining a healthy lifestyle while caregiving.',
                        'Create a safe environment by modifying the living space to reduce hazards and enhance the well-being of your loved one.',
                      ];
                      return ListenableBuilder(
                        listenable: _controller,
                        builder: (context, child) {
                          double factor = 1;
                          if (_controller.position.hasContentDimensions) {
                            factor = 1 - (_controller.page! - index).abs();
                          }

                          return Center(
                            child: SizedBox(
                              height: 80 + (factor * 80),
                              child: Card(
                                elevation: 4,
                                color: cardColors[index],
                                child: Center
                                  (child: ListTile(
                                  subtitle: Text(cardTexts[index],
                                    style: TextStyle(
                                      color: Colors.black, // Text color
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  title: Text(cardTitles[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins Regular',
                                    ),
                                  ),
                                ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
