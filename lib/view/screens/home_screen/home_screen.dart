
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator_app/view/screens/home_screen/controler/home_controller.dart';
import 'package:translator_app/view/screens/home_screen/controler/voice_detect_controller.dart';
import 'package:translator_app/view/screens/home_screen/voice_translate.dart';
import 'package:translator_app/view/screens/home_screen/widget/TSizes.dart';
import 'package:translator_app/view/screens/home_screen/widget/t_output_text_field.dart';
import 'package:translator_app/view/screens/home_screen/widget/t_text_field.dart';
import 'widget/input_text_dropdown.dart';
import 'widget/output_Text_dropdown.dart';
import 'widget/t_translated_button.dart';



class HomeScreen extends StatelessWidget {
  
  final HomeController homeController = Get.put(HomeController());
  final VoiceTranslateController Vcontroller = Get.put(VoiceTranslateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTapDown: (details) async {
          if (!Vcontroller.isListening.value) {
            var available = await Vcontroller.initializeSpeechToText();
            if (available) {
              Vcontroller.startListening();
            }
          }
        },
        onTapUp: (details) {
          Vcontroller.stopListening();
        },
        child: Obx(() => AvatarGlow(
              animate: Vcontroller.isListening.value,
              duration: const Duration(milliseconds: 2000),
              glowColor: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 35,
                child: Icon(Vcontroller.isListening.value ? Icons.mic : Icons.mic_none, color: Colors.white),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.spaceBtwSections),
          child: Column(
            children: [
              SizedBox(height: TSizes.lg),

              ///---  Logo

              Obx(
                ()=> TTextField(
                controller: homeController,
                 text: Vcontroller.text.value
                ),
              ),
             

              SizedBox(height: TSizes.spaceBtwItems),
              

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

  //////////////-----   Input Text dropdown                 
                  InputTextDropDown(controller: homeController),

                  SizedBox( width: TSizes.defaultSpace, ),
              
              
                  Icon(Icons.arrow_forward),

                   SizedBox( width: TSizes.defaultSpace, ),

              
    //////////////-----   Translated Text dropdown      
                  OutputTextDropDown(hController: homeController),
                ],
              ),

             SizedBox(height: TSizes.spaceBtwItems),

//////////---- Button
              Translated_button(
                voiceTranslateController: VoiceTranslateController(),
                homeController: homeController
                ),

              SizedBox(height: TSizes.spaceBtwItems),


    //////////--- Show transated Texts
              TranslatedTextField(hController: homeController),

 
           


            ],
          ),
        ),
      ),
    );
  }
}

