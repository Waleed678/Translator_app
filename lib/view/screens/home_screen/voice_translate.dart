// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_to_text.dart';
// import 'widget/TSizes.dart';



// class VoiceTranslate extends StatefulWidget {
//   const VoiceTranslate({super.key});

//   @override
//   State<VoiceTranslate> createState() => _VoiceTranslateState();
// }

// class _VoiceTranslateState extends State<VoiceTranslate> {

// SpeechToText speechToText = SpeechToText();
//  var text = 'Hold the button and start speaking';
//  var isListening = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: GestureDetector(
//         onTapDown: (details) async{
//           if(!isListening)  {
//             var available = await speechToText.initialize();
//             if(available) {
//               setState(() {
//                 isListening = true;
//                 speechToText.listen(
//                   onResult: (result) {
//                     setState(() {
//                       text = result.recognizedWords;
//                     });
//                   }
//                 );
//               });
//             } 
//           }
//         },
//         onTapUp: (details){
//           setState(() {
//             isListening = false;
//           });
//           speechToText.stop();
//         },
//         child: AvatarGlow(
//              animate: isListening,
//              duration:  Duration(milliseconds: 2000),
//              glowColor: Colors.blue,
//           child: CircleAvatar(
//            backgroundColor: Colors.blue,
//            radius: 35, child:  Icon( isListening ? Icons.mic : Icons.mic_none, color: Colors.white,),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding:  EdgeInsets.all(TSizes.spaceBtwSections),
//         child: Column(children: [
//              Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//               margin: EdgeInsets.only(bottom: 150),
//               child: Text(text),
//              )
//         ]),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:translator_app/view/screens/home_screen/controler/voice_detect_controller.dart';
import 'package:translator_app/view/screens/home_screen/home_screen.dart';
import 'package:translator_app/view/screens/home_screen/widget/TSizes.dart';

class VoiceTranslate extends StatelessWidget {

 final VoiceTranslateController Vcontroller = Get.put(VoiceTranslateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: GestureDetector(
      //   onTapDown: (details) async {
      //     if (!Vcontroller.isListening.value) {
      //       var available = await Vcontroller.initializeSpeechToText();
      //       if (available) {
      //         Vcontroller.startListening();
      //       }
      //     }
      //   },
      //   onTapUp: (details) {
      //     Vcontroller.stopListening();
      //   },
      //   child: Obx(() => AvatarGlow(
      //         animate: Vcontroller.isListening.value,
      //         duration: const Duration(milliseconds: 2000),
      //         glowColor: Colors.blue,
      //         child: CircleAvatar(
      //           backgroundColor: Colors.blue,
      //           radius: 35,
      //           child: Icon(Vcontroller.isListening.value ? Icons.mic : Icons.mic_none, color: Colors.white),
      //         ),
      //       )),
      // ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(TSizes.spaceBtwSections),
      //       child: Obx(() => Container(
      //             alignment: Alignment.center,
      //             padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      //             margin: EdgeInsets.only(bottom: 150),
      //             child: Text(Vcontroller.text.value),
      //           )),
      //     ),

      //     ElevatedButton(onPressed: (){
      //       Get.to(HomeScreen());}, child: Text('Home Screen'))


      //   ],
      // ),
    );
  }
}
