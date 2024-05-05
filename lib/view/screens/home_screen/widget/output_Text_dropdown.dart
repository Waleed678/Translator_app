import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator_app/view/screens/home_screen/controler/home_controller.dart';



class OutputTextDropDown extends StatelessWidget {
  const OutputTextDropDown({
    super.key,
    required this.hController,
  });

  final HomeController hController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton<String>(
        value: hController.outputLanguage.value,
        onChanged: (newValue) =>
            hController.outputLanguage.value = newValue!,
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
