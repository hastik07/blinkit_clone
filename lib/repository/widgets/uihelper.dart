import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static customText({
    required String text,
    Color? color,
    required FontWeight fontWeight,
    String? fontFamily,
    required double fontSize,
  }) {
    return Text(text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily ?? "regular",
          fontWeight: fontWeight,
          color: color,
        ));
  }

  static customTextField({
    required TextEditingController controller,
  }) {
    return Container(
      height: 40,
      width: 410,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFC5C5C5),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream",
          prefixIcon: Image.asset('assets/images/search.png'),
          suffixIcon: Image.asset('assets/images/mic 1.png'),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFF27AF34),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 8,
            color: Color(0xFF27AF34),
          ),
        ),
      ),
    );
  }
}
