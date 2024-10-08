import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readit/Pronunciation/controllers/pronunciation_controller.dart';
import 'package:readit/reusable/custom_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      home: PronunciationPracticePage(),
    );
  }
}

class PronunciationPracticePage extends StatelessWidget {
  final PronunciationController controller = Get.put(PronunciationController());

  // List of difficulty levels
  final List<String> levels = ['Beginner/Débutant', 'Intermediate/Intermédiaire', 'Advanced/Avancé'];

  // Observable for selected level
  RxString _selectedLevel = 'Beginner/Débutant'.obs; // Default to Beginner

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        any: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Level Dropdown
            Obx(() => DropdownButton<String>(
                  value: _selectedLevel.value,
                  underline: const SizedBox(),
                  onChanged: (String? value) {
                    if (value != null) {
                      _selectedLevel.value = value;
                      controller.updateLevel(_selectedLevel.value);
                    }
                  },
                  items: levels.map((String level) {
                    return DropdownMenuItem<String>(
                      value: level,
                      child: Text(
                        level,
                        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                      ),
                    );
                  }).toList(),
                )),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Display the current statement (French and English)
          Obx(() => Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              controller.currentStatement.value.french,
                              style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              controller.currentStatement.value.english,
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.volume_up),
                        onPressed: () {
                          controller.speak(controller.currentStatement.value.french);
                        },
                      ),
                    ],
                  ),
                ),
              )),
          const SizedBox(height: 20),
          // Button to listen for pronunciation
          ElevatedButton.icon(
            onPressed: () {
              controller.listenForPronunciation();
            },
            icon: Obx(() => Icon(controller.isListening.value ? Icons.mic : Icons.mic_none)),
            label: Obx(() => Text(controller.isListening.value ? 'Listening...' : 'Pronounce Now')),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
          const SizedBox(height: 20),
          // Display the correct pronunciation
          Obx(() => Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'My Pronunciation: ${controller.correctPronunciation.value}',
                          style: const TextStyle(fontSize: 18, color: Colors.green),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.volume_up),
                        onPressed: () {
                          controller.speak(controller.correctPronunciation.value);
                        },
                      ),
                    ],
                  ),
                ),
              )),
          const SizedBox(height: 20),
          // Button to move to the next statement
          ElevatedButton.icon(
            onPressed: () {
              controller.nextStatement();
            },
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Next Statement'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
          const SizedBox(height: 20),
          // Speech rate slider
          Obx(() => Column(
                children: [
                  const Text('Speech Rate'),
                  Slider(
                    value: controller.speechRate.value,
                    min: 0.1,
                    max: 2.0,
                    divisions: 19,
                    label: controller.speechRate.value.toStringAsFixed(1),
                    onChanged: (value) {
                      controller.setSpeechRate(value);
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

