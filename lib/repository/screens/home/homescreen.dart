import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"}
  ];
  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\n By Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Stack(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              color: Color(0XFFEC0505),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.customText(
                        text: "Blinkit in",
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "bold",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.customText(
                        text: "16 minutes",
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "bold",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.customText(
                          text: "HOME ",
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      UiHelper.customText(
                        text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: UiHelper.customTextField(controller: searchController),
            ),
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.white,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Color(0XFFEC0505),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UiHelper.customImage(img: "image 60.png"),
                  UiHelper.customImage(img: "image 55.png"),
                  UiHelper.customText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "bold"),
                  UiHelper.customImage(img: "image 55.png"),
                  UiHelper.customImage(img: "image 61.png")
                ],
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, top: 1, bottom: 2),
                        child: Container(
                          height: 108,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Color(0XFFEAD3D3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              UiHelper.customText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                              UiHelper.customImage(
                                  img: data[index]["img"].toString())
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 108,
                        width: 93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: UiHelper.customImage(
                            img: categroy[index]["img"].toString()),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: UiHelper.customText(
                          text: categroy[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        children: [
                          UiHelper.customImage(img: "timer 4.png"),
                          UiHelper.customText(
                              text: "16 MINS",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.normal,
                              fontSize: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Row(
                        children: [
                          UiHelper.customImage(img: "image 90.png"),
                          UiHelper.customText(
                              text: "79",
                              color: Color(0XFF9C9C9C),
                              fontWeight: FontWeight.bold,
                              fontSize: 15)
                        ],
                      ),
                    )
                  ],
                );
              },
              itemCount: categroy.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.customText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "bold")
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB)),
                        child: UiHelper.customImage(
                            img: grocerykitchen[index]["img"].toString()),
                      ),
                    ),
                    UiHelper.customText(
                        text: grocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 10)
                  ],
                );
              },
              itemCount: grocerykitchen.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    ));
  }
}
