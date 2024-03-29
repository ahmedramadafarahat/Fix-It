import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/technicians_card.dart';
import 'package:flutter/material.dart';

import '../src/data/app_size.dart';

class ElectricsScreen extends StatelessWidget {
  const ElectricsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppBar(),
      ),
      body: Column(
        children: [
          Center(
            child: Image(
              height: PhoneSize.phoneHeight(context) * 0.2,
              image: const AssetImage(
                'assets/images/man.png',
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffEDEDED),
                border: const Border(
                  top: BorderSide(color: Color(0xff1B3A56), width: 4),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView(
                children: const [
                  Center(
                    child: Text(
                      'Service technicians',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B3A56),
                        fontFamily: 'ReadexPro',
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Electrics',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff1B3A56),
                        fontFamily: 'ReadexPro',
                      ),
                    ),
                  ),
                  TechniciansCard(
                    image: 'assets/images/the godfather.jpeg',
                    name: 'ahmed okal',
                    city: 'Tanta',
                    phoneNumber: '01068609852',
                    price: '15',
                    service: 'water',
                  ),
                  TechniciansCard(
                    image: 'assets/images/Don.jpg',
                    name: 'ahmed ramadan',
                    city: 'cairo',
                    phoneNumber: '0101195959',
                    price: '16',
                    service: 'Carpentry',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
