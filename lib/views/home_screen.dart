import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/custom_circle_avatar.dart';
import 'package:fixit/components/most_popular_services.dart';
import 'package:fixit/components/recommended_for_you.dart';
import 'package:fixit/service_screens/electricsscreen.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/services_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppBar(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: PhoneSize.phoneHeight(context) * 0.05,
                horizontal: PhoneSize.phonewidth(context) * 0.06),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1B3A56),
                    Color(0xff4f95d4),
                  ],
                ),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 3,
                  color: const Color(0xff1B3A56),
                ),
              ),
              height: PhoneSize.phoneHeight(context) * 0.2,
              width: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: PhoneSize.phoneHeight(context) * 0.01,
                        horizontal: PhoneSize.phonewidth(context) * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '40% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'ReadexPro',
                          ),
                        ),
                        SizedBox(
                          height: PhoneSize.phoneHeight(context) * 0.01,
                        ),
                        const Text(
                          'Full Services',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'ReadexPro',
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadowColor: Colors.white,
                              elevation: 6,
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ReadexPro',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: PhoneSize.phonewidth(context) * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: PhoneSize.phoneHeight(context) * 0.01),
                    child: Image(
                      height: PhoneSize.phoneHeight(context) * 0.15,
                      image: const AssetImage('assets/images/client.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.01,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Choose Service',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'ReadexPro',
                    color: Color(0xff1B3A56),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ServicesScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ReadexPro',
                      color: Color(0xff1B3A56),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.12,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomCircleAvatar(
                    image: 'assets/images/electricity.png',
                    onTap: () {
                      AppNavigation.pushR(context, const ElectricsScreen());
                    }),
                CustomCircleAvatar(
                    image: 'assets/images/water.png', onTap: () {}),
                CustomCircleAvatar(
                    image: 'assets/images/carpentry.png', onTap: () {}),
                CustomCircleAvatar(
                    image: 'assets/images/home_service.png', onTap: () {}),
                CustomCircleAvatar(
                    image: 'assets/images/coiffeur.png', onTap: () {}),
                CustomCircleAvatar(
                    image: 'assets/images/driver.png', onTap: () {}),
              ],
            ),
          ),
          Container(
            height: PhoneSize.phoneHeight(context) * 0.2,
            width: double.infinity,
            color: const Color(0xff1B3A56),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fixit !',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'ReadexPro',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'provides 24-hour call service',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'ReadexPro',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: PhoneSize.phonewidth(context) * 0.05,
                ),
                Image(
                  height: PhoneSize.phoneHeight(context) * 0.14,
                  image: const AssetImage('assets/images/24.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.01,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Most Popular Services',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'ReadexPro',
                    color: Color(0xff1B3A56),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ReadexPro',
                      color: Color(0xff1B3A56),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.15,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                MostPopularServices(
                  image: 'assets/icons/electricityIcon.png',
                  service: 'Electricity',
                  discount: '20% OFF ',
                ),
                MostPopularServices(
                  image: 'assets/icons/home_serviceIcon.png',
                  service: 'Home service',
                  discount: '30% OFF ',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Divider(
              color: Color(0xff1B3A56),
              thickness: 2,
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Recommended For You',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'ReadexPro',
                    color: Color(0xff1B3A56),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ReadexPro',
                      color: Color(0xff1B3A56),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.16,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                RecommendedForYou(
                    name: 'ahmed okal',
                    lastStar: Icons.star,
                    rate: '(190)',
                    service: 'electricity'),
                RecommendedForYou(
                    name: 'ahmed ramadan',
                    lastStar: Icons.star_half,
                    rate: '(150)',
                    service: 'water')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
