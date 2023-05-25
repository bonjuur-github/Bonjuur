// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'dart:async'; // Required for Timer

class SpeechToTextFlutterSeconds extends StatefulWidget {
  const SpeechToTextFlutterSeconds({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SpeechToTextFlutterSecondsState createState() =>
      _SpeechToTextFlutterSecondsState();
}

class _SpeechToTextFlutterSecondsState
    extends State<SpeechToTextFlutterSeconds> {
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = '';
  Timer? _timer; // Add a Timer variable

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _listen,
            child: Text(_isListening ? 'Stop Listening' : 'Start Listening'),
          ),
          Text(
            _text,
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) async {
          setState(() => _isListening = val == 'listening');
        },
        onError: (val) => setState(() {
          _text = val.errorMsg;
        }),
      );

      if (available) {
        _startListening();
      }
    } else {
      _speech.stop();
      _timer?.cancel(); // Cancel the timer when stopping listening
      setState(() => _isListening = false);
    }
  }

  void _startListening() {
    _speech.listen(
      onResult: (val) => setState(() {
        _text = val.recognizedWords;
      }),
    );

    // Starts a timer to stop and restart the listening process every 10 seconds
    _timer = Timer.periodic(Duration(seconds: 10), (timer) async {
      if (_isListening) {
        await _speech.stop();
        await Future.delayed(Duration(
            milliseconds: 500)); // Delay before starting to listen again
        _startListening();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }
}
