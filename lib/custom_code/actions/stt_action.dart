// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'dart:async'; // Required for Timer

stt.SpeechToText _speech = stt.SpeechToText();
bool _isListening = false;
String _text = '';
Timer? _timer; // Add a Timer variable

StreamController<String> _transcriptionController = StreamController<String>();

Stream<String> sttAction() {
  _initializeSpeech();

  // Returns the Stream from the StreamController.
  // This Stream emits transcribed text every 10 seconds.
  return _transcriptionController.stream;
}

void _initializeSpeech() async {
  bool available = await _speech.initialize(
    onStatus: (val) async {
      _isListening = val == 'listening';
    },
    onError: (val) {
      _text = val.errorMsg;
    },
  );

  if (available) {
    _startListening();
  }
}

void _startListening() {
  _speech.listen(
    onResult: (val) {
      _text = val.recognizedWords;
    },
  );

  // Starts a timer to stop and restart the listening process every 10 seconds
  _timer = Timer.periodic(Duration(seconds: 10), (timer) async {
    if (_isListening) {
      await _speech.stop();
      await Future.delayed(Duration(milliseconds: 500));
      _startListening();
      _transcriptionController
          .add(_text); // Adds transcribed text to the Stream
    }
  });
}

void dispose() {
  _timer?.cancel(); // Cancel the timer when the action is disposed
  _transcriptionController
      .close(); // Close the StreamController when the action is disposed
}
