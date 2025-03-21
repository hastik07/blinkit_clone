import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.customImage(img: 'onboardingscreen.png'),
            SizedBox(
              height: 30,
            ),
            UiHelper.customImage(img: 'image 10.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(
              text: 'India\'s last minute app',
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'bold',
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      UiHelper.customText(
                        text: 'Sujal',
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'regular',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      UiHelper.customText(
                        text: '787945XXXX',
                        color: Color(0xFF9C9C9C),
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => BottomNavScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.customText(
                                text: 'Login with ',
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'bold',
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              UiHelper.customImage(img: 'image 9.png'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      UiHelper.customText(
                          text:
                              'Access your saved addresses from Zomato automatically!',
                          color: Color(0xFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          fontFamily: 'regular'),
                      SizedBox(
                        height: 15,
                      ),
                      UiHelper.customText(
                        text: 'or login with phone number',
                        color: Color(0xFF269237),
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'regular',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
