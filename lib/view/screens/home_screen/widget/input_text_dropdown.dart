import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator_app/view/screens/home_screen/controler/home_controller.dart';



class InputTextDropDown extends StatelessWidget {
  const InputTextDropDown({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton<String>(
        value: controller.inputLanguage.value,
        onChanged: (newValue) =>
            controller.inputLanguage.value = newValue!,
        items: <String>[
          'en',
          'fr',
          'es',
          'ur',
          'hi',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
