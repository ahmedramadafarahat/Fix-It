import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/book_screen.dart';
import 'package:flutter/material.dart';

import '../src/data/app_navigation.dart';

class TechniciansCard extends StatelessWidget {
  const TechniciansCard(
      {super.key,
      required this.image,
      required this.name,
      required this.city,
      required this.phoneNumber,
      required this.price,
      required this.service});
  final String image;
  final String name;
  final String service;
  final String city;
  final String phoneNumber;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Container(
        height: PhoneSize.phoneHeight(context) * 0.18,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff1B3A56),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              height: double.infinity,
              width: PhoneSize.phonewidth(context) * 0.3,
              child: Image(
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
                image: AssetImage(
                  image,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'ReadexPro',
                    color: Colors.white,
                  ),
                ),
                Text(
                  service,
                  style: const TextStyle(
                    fontFamily: 'ReadexPro',
                    color: Color(0xfff2a365),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      city,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: PhoneSize.phonewidth(context) * 0.07),
                      child: const Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      phoneNumber,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Total Price : \$$price hr',
                  style: const TextStyle(
                    fontFamily: 'ReadexPro',
                    color: Color(0xfff2a365),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () {
                    AppNavigation.push(context, const BookScreen());
                  },
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1B3A56),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
