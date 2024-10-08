import 'package:get/get.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:readit/Pronunciation/controllers/statements_provider.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:readit/Pronunciation/model/statement_model.dart';

class PronunciationController extends GetxController {
  var currentStatement = Statement(french: 'Bonjour', english: 'Hello').obs;
  var correctPronunciation = ''.obs;
  var isListening = false.obs;
  var speechRate = 1.0.obs;
  var selectedLevel = 'Beginner/Débutant';

  FlutterTts flutterTts = FlutterTts(); // TTS instance
  stt.SpeechToText speechToText = stt.SpeechToText(); // Speech recognition instance
  StatementProvider statementProvider = StatementProvider(); // Statement provider instance

  @override
  void onInit() {
    super.onInit();
    flutterTts.setLanguage("fr-FR"); // Set language to French only
    flutterTts.setSpeechRate(speechRate.value);
    nextStatement(); // Load the initial statement
  }

  // Method to change the current statement based on selected level
  void updateLevel(String level) {
    selectedLevel = level;
    nextStatement();
  }

  // Method to load next random statement based on selected level
  void nextStatement() {
    currentStatement.value = statementProvider.getStatementByIndex(selectedLevel);
  }

  // Speak the given text
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }

  // Stop speaking
  Future<void> stopSpeaking() async {
    await flutterTts.stop();
  }

  // Update speech rate
  void setSpeechRate(double rate) {
    speechRate.value = rate;
    flutterTts.setSpeechRate(rate);
  }

  // Initialize or stop speech recognition based on current listening state
  void listenForPronunciation() async {
    if (!isListening.value) {
      bool available = await speechToText.initialize();
      if (available) {
        isListening.value = true;
        speechToText.listen(
          onResult: (result) {
            correctPronunciation.value = result.recognizedWords;
          },
          localeId: 'fr_FR', // Set speech recognition language to French
        );
      }
    } else {
      stopListening(); // Stop listening if already active
    }
  }

  // Stop listening to user input
  void stopListening() async {
    isListening.value = false;
    speechToText.stop();
  }
}
