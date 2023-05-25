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

class SpeechToTextFlutter extends StatefulWidget {
  const SpeechToTextFlutter({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SpeechToTextFlutterState createState() => _SpeechToTextFlutterState();
}

class _SpeechToTextFlutterState extends State<SpeechToTextFlutter> {
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = '';

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
          if (val == 'notListening' && _isListening) {
            await Future.delayed(Duration(seconds: 1));
            _startListening();
          }
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
      setState(() => _isListening = false);
    }
  }

  void _startListening() {
    _speech.listen(
      onResult: (val) => setState(() {
        _text = val.recognizedWords;
      }),
    );
  }
}
