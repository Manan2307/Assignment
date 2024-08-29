import 'package:flutter/material.dart';
import 'package:my_app/Utilities/AvatarWithText.dart';
import 'package:my_app/Utilities/ItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> items = [
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Manan'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Maria'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Taylor'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Max'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Name 5'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Name 6'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Name 7'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Name 8'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Name 9'},
    {'imagePath': 'assets/Manan_Photo.jpg', 'text': 'Name 10'},
  ];

  final List<Map<String, dynamic>> items2 = [
    {
      'imagePath': 'assets/Transaction_Icon.png',
      'name': 'Manan Shah',
      'dateTime': '18 Jul 2023 \u2981 12:00',
      'value': 650.000
    },
    {
      'imagePath': 'assets/Transaction_Icon.png',
      'name': 'Maria',
      'dateTime': '18 Jul 2023 \u2981 8:00',
      'value': -50
    },
    {
      'imagePath': 'assets/Transaction_Icon.png',
      'name': 'Taylor',
      'dateTime': '18 Jul 2023 \u2981 10:00',
      'value': 150
    },
    {
      'imagePath': 'assets/Transaction_Icon.png',
      'name': 'Max',
      'dateTime': '18 Jul 2023 \u2981 1:00',
      'value': 350
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40, right: 20,left: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/Manan_Photo.jpg'),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Back',
                  style: TextStyle(
                    fontSize: 16
                  ),),
                  Text('Manan Shah',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                ],
              ),
              Expanded(child: SizedBox()),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/Notification_Bell.png'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade900,
                  Colors.purple.shade700,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Balance",
                            style: TextStyle(color: Colors.white,
                            fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                "Rp. 25.000.000",
                                style: TextStyle(color: Colors.white,
                                fontSize: 22),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/Card_Icon.png'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\u2981\u2981\u2981\u2981 \u2981\u2981\u2981\u2981 \u2981\u2981\u2981\u2981 2345",
                          style: TextStyle(color: Colors.white,
                          fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Master Card",
                        style: TextStyle(color: Colors.white,
                        fontSize: 16),
                      ),
                      Text(
                        "09/27",
                        style: TextStyle(color: Colors.white,
                        fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30 ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            AvatarWithText(imagePath: 'assets/TopUp.png', text: 'Top up'),
            AvatarWithText(imagePath: 'assets/Send.png', text: 'Send'),
            AvatarWithText(
                imagePath: 'assets/Request.png', text: 'Request'),
            AvatarWithText(imagePath: 'assets/More.png', text: 'More'),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Quick Transfer",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  const AvatarWithText(
                      imagePath: 'assets/AddNew.png', text: 'Add'),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: items
                            .map((item) => Row(
                                  children: [
                                    AvatarWithText(
                                      imagePath: item['imagePath']!,
                                      text: item['text']!,
                                    ),
                                    const SizedBox(width: 15),
                                  ],
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 30, right: 30 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transaction",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "See All",
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items2.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      imagePath: items2[index]['imagePath'],
                      name: items2[index]['name'],
                      dateTime: items2[index]['dateTime'],
                      value: double.parse(items2[index]['value'].toString()) ,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
