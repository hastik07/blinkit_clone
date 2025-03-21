import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  TextEditingController searchController = TextEditingController();
  var groceryKitchen = [
    {
      "img": "image 41.png",
      "text": "Vegetables & \nFruits",
    },
    {
      "img": "image 42.png",
      "text": "Atta, Dal & \nRice",
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee & \nMasala",
    },
    {
      "img": "image 44 (1).png",
      "text": "Dairy, Bread & \nMilk",
    },
    {
      "img": "image 45 (1).png",
      "text": "Biscuits & \nBakery",
    },
  ];

  var secondGroceryKitchen = [
    {
      "img": "image 21.png",
      "text": "Dry Fruits & \nCereals",
    },
    {
      "img": "image 22.png",
      "text": "Kitchen & \nAppliances",
    },
    {
      "img": "image 23.png",
      "text": "Tea & \nCoffees",
    },
    {
      "img": "image 24.png",
      "text": "Ice Creams & \nmuch more",
    },
    {
      "img": "image 25.png",
      "text": "Noodles & \nPacket Food",
    },
  ];

  var snacksAndDrinks = [
    {
      "img": "image 31.png",
      "text": "Chips & \nNamkeens",
    },
    {
      "img": "image 32.png",
      "text": "Sweets & \nChocalates",
    },
    {
      "img": "image 33.png",
      "text": "Drinks & \nJuices",
    },
    {
      "img": "image 34.png",
      "text": "Sauces & \nSpreads",
    },
    {
      "img": "image 35.png",
      "text": "Beauty & \nCosmetics",
    },
  ];

  var houseHoldEssential = [
    {
      "img": "image 36.png",
    },
    {
      "img": "image 37.png",
    },
    {
      "img": "image 38.png",
    },
    {
      "img": "image 39.png",
    },
    {
      "img": "image 40.png",
    },
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
                color: Color(0xFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.customText(
                          text: 'Blinkit in',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'bold',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.customText(
                          text: '16 minutes',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'bold',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.customText(
                          text: 'HOME - ',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'bold',
                        ),
                        UiHelper.customText(
                          text: 'Sujal Dave, Ratanada, Jodhpur (Raj)',
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontFamily: 'regular',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15,
                top: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: UiHelper.customTextField(
                  controller: searchController,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.customText(
                text: 'Grocery & Kitchen',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'bold',
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: UiHelper.customImage(
                            img: groceryKitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.customText(
                        text: groceryKitchen[index]["text"].toString(),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.black,
                        fontFamily: 'regular',
                      ),
                    ],
                  );
                },
                itemCount: groceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: UiHelper.customImage(
                            img: secondGroceryKitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.customText(
                        text: secondGroceryKitchen[index]["text"].toString(),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.black,
                        fontFamily: 'regular',
                      ),
                    ],
                  );
                },
                itemCount: secondGroceryKitchen.length,
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
                text: 'Snacks & Drinks',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'bold',
                color: Colors.black,
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: UiHelper.customImage(
                            img: snacksAndDrinks[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.customText(
                        text: snacksAndDrinks[index]["text"].toString(),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.black,
                        fontFamily: 'regular',
                      ),
                    ],
                  );
                },
                itemCount: snacksAndDrinks.length,
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
                text: 'Household Essential',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'bold',
                color: Colors.black,
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: UiHelper.customImage(
                            img: houseHoldEssential[index]["img"].toString(),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: houseHoldEssential.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
