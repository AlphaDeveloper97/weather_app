import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_text.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 30, bottom: 30, left: 22),
        label: CustomText(text: "Search", fontSize: 22),
        labelStyle: TextStyle(fontSize: 16),
        hintText: "Search",
        hintStyle: TextStyle(fontSize: 16),
        suffixIcon: Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
