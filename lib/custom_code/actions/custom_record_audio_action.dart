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

import 'dart:async';
import 'package:record/record.dart'; // Library for audio recording.
import 'package:audioplayers/audioplayers.dart';

class customRecordAudioAction extends StatefulWidget {
  customRecordAudioAction({Key? key}) : super(key: key);

  @override
  _customRecordAudioActionState createState() =>
      _customRecordAudioActionState();
}

class _customRecordAudioActionState extends State<customRecordAudioAction> {
  final _audioRecorder = Record();
  final _audioPlayer = AudioPlayer(); // Player for the audio
  Timer? _timer;
  int _recordDuration = 0;
  String? path;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start();

        bool isRecording = await _audioRecorder.isRecording();
        if (isRecording) {
          _startTimer();

          // Stop the recording after 10 seconds and start playback
          Future.delayed(Duration(seconds: 10), () async {
            await _stop();
            await _play();
          });
        }
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    path = await _audioRecorder.stop();
  }

  Future<void> _play() async {
    if (path != null) {
      await _audioPlayer.play(path!, isLocal: true);
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _audioRecorder.dispose();
    _audioPlayer.dispose(); // Dispose the audio player as well
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            _start();
          },
          child: Text('Button'),
        ),
        SizedBox(height: 20),
        Text("Recording duration: $_recordDuration seconds"),
      ],
    );
  }
}
