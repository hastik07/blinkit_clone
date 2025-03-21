import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class PrintScreen extends StatelessWidget {
  PrintScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbf0ce),
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
            height: 20,
          ),
          UiHelper.customText(
            text: 'Print Store',
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.black,
          ),
          UiHelper.customText(
            text: 'Blinkit ensures secure prints at every stage',
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Color(0xFF9C9C9C),
            fontFamily: 'regular',
          ),
          SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Container(
                height: 180,
                width: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.customText(
                            text: 'Documents',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: 'bold',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage('assets/images/0.png'),
                        ),
                        UiHelper.customText(
                          text: '  Price starting at rs 3/page',
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontFamily: 'regular',
                          color: Color(0xFF9C9C9C),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage('assets/images/0.png'),
                        ),
                        UiHelper.customText(
                          text: '  Paper quality: 70 GSM',
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontFamily: 'regular',
                          color: Color(0xFF9C9C9C),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage('assets/images/0.png'),
                        ),
                        UiHelper.customText(
                          text: '  Single side prints',
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontFamily: 'regular',
                          color: Color(0xFF9C9C9C),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 30,
                child: Image(
                  image: AssetImage('assets/images/image 62.png'),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF27AF34),
                  ),
                  child: Text('Upload Files'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
