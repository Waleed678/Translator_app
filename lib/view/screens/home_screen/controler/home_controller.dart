import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator/translator.dart';


class HomeController extends GetxController {
  final outputController = TextEditingController(text: 'Result here').obs;
  final translator = GoogleTranslator();
  final inputText = ''.obs;
  final inputLanguage = 'en'.obs;
  final outputLanguage = 'fr'.obs;

  void translateText(value) async {
    final translated = await translator.translate(
      inputText.value,
      from: inputLanguage.value,
      to: outputLanguage.value,
    );
    outputController.value.text = translated.text;
  }
}