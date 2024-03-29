import 'package:fixit/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../src/data/app_size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
                'assets/images/order.png',
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: const Text(
                            'Current',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff1B3A56),
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: const Text(
                            'Previous',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffE78125),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
