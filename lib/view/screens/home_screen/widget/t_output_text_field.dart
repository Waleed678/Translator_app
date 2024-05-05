import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:translator_app/view/screens/home_screen/controler/home_controller.dart';



class TranslatedTextField extends StatelessWidget {
  const TranslatedTextField({
    super.key,
    required this.hController,
  });

  final HomeController hController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: hController.outputController.value,
        maxLines: 3,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (value) => hController.inputText.value = value,
      ),
    );
  }
}

