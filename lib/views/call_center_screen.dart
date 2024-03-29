import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/custom_chat_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../src/data/app_size.dart';

class CallCenterScreen extends StatelessWidget {
  const CallCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppBar(),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const Positioned(
                bottom: 15,
                right: 35,
                child: CircleAvatar(
                  backgroundColor: Color(0xff1AAE29),
                  radius: 9,
                ),
              ),
              Image(
                height: PhoneSize.phoneHeight(context) * 0.2,
                image: const AssetImage(
                  'assets/images/app_logo.png',
                ),
              ),
            ],
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
                    CustomChatBar(
                      controller: controller,
                    ),
                    Expanded(
                      child: PageView(controller: controller, children: [
                        Column(children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) => Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: const BoxDecoration(
                                      color: Color(0xff1B3A56),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                          bottomLeft: Radius.circular(25))),
                                  child: const Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'أحب أعرف تفاصيل الخدمات',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        'pm 10:30',
                                        style: TextStyle(
                                            color: Color(0xffD9D9D9),
                                            fontSize: 8),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.075,
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.camera_alt_outlined),
                                          Spacer(),
                                          Icon(Icons.send)
                                        ],
                                      ),
                                    ),
                                  ),
                                  hintText: 'Write message ....',
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff1B3A56)),
                                  filled: true,
                                  fillColor: Color(0xffD9D9D9),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ]),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              margin: EdgeInsets.symmetric(vertical: 20),
                              color: Colors.green,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Contact Information',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Spacer()
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width * 0.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Website',
                                        style: TextStyle(
                                            color: Color(0xff1B3A56),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'E-Mail',
                                        style: TextStyle(
                                            color: Color(0xff1B3A56),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Phone',
                                        style: TextStyle(
                                            color: Color(0xff1B3A56),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Social',
                                        style: TextStyle(
                                            color: Color(0xff1B3A56),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'www.fixit.com',
                                        style: TextStyle(
                                            color: Color(0xffA5A3A3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Fixit@gmail.com',
                                        style: TextStyle(
                                            color: Color(0xffA5A3A3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '01014528698',
                                        style: TextStyle(
                                            color: Color(0xffA5A3A3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/facebook.png',
                                            height: 30,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
