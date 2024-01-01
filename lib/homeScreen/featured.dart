import 'package:flutter/material.dart';

class Featured1 extends StatefulWidget {
  const Featured1({super.key});

  @override
  State<Featured1> createState() => _Featured1State();
}

class _Featured1State extends State<Featured1> {
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
          "Articles",
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
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text('Mental Health Awareness',
                style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 25),)),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/scenery.jpg',
                        height: 200,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Caring for individuals with dementia can be emotionally challenging for caregivers.'
                        ' Mental health awareness is crucial in this context, as caregivers often face stress,'
                        ' anxiety, and feelings of isolation. Witnessing the cognitive decline of a loved one '
                        'can evoke a range of emotions, leading to caregiver burnout. Its essential for caregivers'
                        ' to prioritize their mental well-being, seeking support from friends, family, or support groups.'
                        ' Understanding the importance of self-care and taking regular breaks is vital. By fostering mental'
                        ' health awareness, caregivers can better navigate the complexities of dementia care, ensuring both'
                        ' their well-being and the quality of care provided to their loved ones.',
                    style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 18),),
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

class Featured2 extends StatefulWidget {
  const Featured2({super.key});

  @override
  _Featured2State createState() => _Featured2State();
}

class _Featured2State extends State<Featured2> {
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
          "Articles",
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
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text('Psychological Help',
                style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 25),)),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/psychological.jpg',
                        height: 200,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Caring for someone with dementia places immense psychological strain on caregivers. Seeking psychological help is pivotal in coping with the emotional challenges tied to dementia caregiving. Professional counseling or therapy can provide caregivers with valuable coping strategies, emotional support, and a safe space to express their feelings. Addressing the psychological impact of caregiving ensures caregivers can navigate their responsibilities with resilience and maintain their own mental well-being.',
                      style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 18),),
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

class Featured3 extends StatefulWidget {
  const Featured3({super.key});

  @override
  _Featured3State createState() => _Featured3State();
}

class _Featured3State extends State<Featured3> {
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
          "Articles",
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
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text('Relationship Advices',
                style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 25),)),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/rship.jpg',
                        height: 200,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Dementia caregiving can strain relationships, demanding patience and understanding. Relationship advice for caregivers emphasizes open communication, empathy, and shared responsibilities. Partners or family members must collaborate, acknowledging the unique challenges dementia poses. Taking time for shared activities, expressing gratitude, and nurturing emotional connections can strengthen relationships. Through mutual support and understanding, caregivers can sustain healthy relationships amidst the challenges of dementia caregiving.',
                      style: TextStyle(fontFamily: 'Poppins Regular', fontSize: 18),),
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