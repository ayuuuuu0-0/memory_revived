import 'package:flutter/material.dart';

import 'Clickable_image.dart';
import 'notification_View.dart';

class FoodTab extends StatefulWidget {
  const FoodTab({super.key});

  @override
  State<FoodTab> createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
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
          "Foods",
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
              Image.asset('assets/images/food_Tab.png',
                // height: 200,
                // width: double.infinity,
                // fit: BoxFit.cover,
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
                          imagePath: 'assets/images/pizza.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const FoodTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/Burger.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const FoodTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/Pasta.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const FoodTab()));
                          },
                        ),
                        const SizedBox(width: 10,),
                        ClickableImageBox2(
                          imagePath: 'assets/images/Chicken.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const FoodTab()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Popular Recipes',
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
                      child: Image.asset('assets/images/butter_chicken.jpg',
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
                              child: Text('Butter Chicken',
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
                                '1. Heat a large skillet or medium saucepan over medium-high heat. Add the oil, butter, and onions and cook onions down until lightly golden, about 3-4 minutes. Add ginger and garlic and let cook for 30 seconds, stirring so it doesn’t burn\n.'
                                    '\n'
                                    '2. Add the chicken, tomato paste, and spices. Cook for 5-6 minutes or until everything is cooked through.\n'
                                    '\n'
                                    '3. Add the heavy cream and simmer for 8-10 minutes stirring occasionally. Serve over Basmati rice or with naan.',
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
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/malai.webp',
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
                              child: Text('Malai Kofta',
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
                                '1. Prepare Koftas: In a bowl, mix grated paneer, mashed potatoes, chopped nuts, salt, garam masala, and coriander powder. Shape the mixture into small balls to form koftas. Deep-fry the koftas until they turn golden brown. Set aside \n.'
                                '\n'
                          ' 2.Prepare Gravy: In a pan, sauté onion-tomato paste until it releases oil. Add turmeric, red chili, and garam masala for flavor. Stir in cashew paste, cream, and milk to create a rich, creamy texture.\n'
                                    '\n'
                          '3. Combine Koftas and Gravy: Gently place the fried koftas into the prepared gravy. Allow them to simmer in the gravy for a few minutes, absorbing the flavors.\n'
                                '\n'
                             '4. Garnish and Serve: Garnish the Malai Kofta with fresh coriander leaves. Serve hot with naan or rice.\n'
                                '\n'
                          'Enjoy the indulgent and flavorful Malai Kofta!',
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
