import 'package:flutter/material.dart';
import 'package:translator_app/view/screens/home_screen/controler/home_controller.dart';
import 'package:translator_app/view/screens/home_screen/controler/voice_detect_controller.dart';
import 'package:translator_app/view/screens/home_screen/voice_translate.dart';



class Translated_button extends StatelessWidget {
  const Translated_button({
    super.key,
    required this.homeController,
    required this.voiceTranslateController,
  });

  final HomeController homeController;
  final VoiceTranslateController voiceTranslateController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        if(voiceTranslateController.isListening.value){
          //  hController.translateText();
           homeController.translateText(voiceTranslateController.text.value);
        } else {
          homeController.translateText(homeController);
        }
      },
      // onPressed: hController.translateText,
      child: Text('Translate'),
    );
  }
}