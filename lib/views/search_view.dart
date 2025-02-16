import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_text.dart';
import 'package:weather_app/widgets/custom_text_filed.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "Search City", fontSize: 22)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(child: CustomTextFiled()),
      ),
    );
  }
}
