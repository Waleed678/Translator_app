import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';


class VoiceTranslateController extends GetxController {
  final SpeechToText _speechToText = SpeechToText();
  final RxString text = ''.obs;
  final RxBool isListening = false.obs;
  final double spaceBtwSections = 16.0;

  Future<bool> initializeSpeechToText() async {
    var available = await _speechToText.initialize();
    if (available) {
      isListening.value = true;
    }
    return available;
  }

  void startListening() {
    _speechToText.listen(
      onResult: (result) {
        text.value = result.recognizedWords;
      },
    );
  }

  void stopListening() {
    isListening.value = false;
    _speechToText.stop();
  }

  @override
  void onClose() {
    _speechToText.stop();
    super.onClose();
  }
}
