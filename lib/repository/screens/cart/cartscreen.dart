import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  TextEditingController searchController = TextEditingController();

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
            height: 10,
          ),
          UiHelper.customImage(img: 'shopping_cart.png'),
          SizedBox(
            height: 20,
          ),
          UiHelper.customText(
            text: 'Reordering will be easy',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'bold',
            color: Color(0xFF000000),
          ),
          UiHelper.customText(
            text: 'Items you order will show up here so you can buy',
            fontWeight: FontWeight.normal,
            fontSize: 15,
            fontFamily: 'regular',
            color: Color(0xFF000000),
          ),
          UiHelper.customText(
            text: 'them again easily.',
            fontWeight: FontWeight.normal,
            fontSize: 15,
            fontFamily: 'regular',
            color: Color(0xFF000000),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.customText(
                text: 'Bestsellers',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                fontFamily: 'bold',
                color: Color(0xFF000000),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  UiHelper.customImage(
                    img: 'image 45.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: UiHelper.customButton(() {}),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  UiHelper.customImage(
                    img: 'image 44.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: UiHelper.customButton(() {}),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  UiHelper.customImage(
                    img: 'image 46.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: UiHelper.customButton(() {}),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
