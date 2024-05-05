import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator_app/view/screens/home_screen/controler/home_controller.dart';
import '../controler/voice_detect_controller.dart';


class TTextField extends StatelessWidget {
   TTextField({
    super.key,
    required this.controller,
    this.voiceTranslateController,
    required this.text,
  });

  final String text;
  final HomeController controller;
  final VoiceTranslateController? voiceTranslateController;

  final VoiceTranslateController Vcontroller = Get.put(VoiceTranslateController());

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          TextField(
            controller: TextEditingController(text: Vcontroller.text.value),
            maxLines: 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter text to translate',
            ),
            onChanged: (value) => controller.inputText.value = value,
          ),
        ],
      ),
    );
  }
}
