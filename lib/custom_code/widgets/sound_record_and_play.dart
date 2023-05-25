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

// The below imports are required for the functioning of the Flutter app.
// They provide functionalities such as backend services, Flutter theme data,
// and Flutter utilities which are all necessary for developing the app.

// Importing necessary Dart libraries for audio handling.
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:record/record.dart'; // Library for audio recording.
import 'package:flutter/foundation.dart';
import 'package:audioplayers/audioplayers.dart'; // Library for audio playback.

// SoundRecordAndPlay is a StatefulWidget, which means its state can change over time.
// Stateful widgets are commonly used for user interfaces that need to be dynamic or interactive.
class SoundRecordAndPlay extends StatefulWidget {
  // These properties are final because they are passed to the widget when it is created
  // and should not be changed thereafter.
  const SoundRecordAndPlay({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  // This method creates a new instance of the private _SoundRecordAndPlayState class,
  // which contains the mutable state for this widget.
  @override
  _SoundRecordAndPlayState createState() => _SoundRecordAndPlayState();
}

// _SoundRecordAndPlayState represents the mutable state of the SoundRecordAndPlay widget.
// It includes properties for tracking whether the user is currently recording or playing back audio,
// the duration of the recording, and the path to the audio file.
class _SoundRecordAndPlayState extends State<SoundRecordAndPlay> {
  bool _isRecording =
      false; // This flag keeps track if recording is in progress.
  bool _isPaused =
      false; // This flag keeps track if recording/playback is paused.
  bool _isPlaying = false; // This flag keeps track if playback is in progress.
  int _recordDuration = 0; // This tracks the duration of the recording.
  String? path = ''; // This stores the file path of the recording.
  Timer? _timer; // This timer is used to track the duration of the recording.
  Timer?
      _ampTimer; // This timer is used to get the amplitude of the audio recording every 200 milliseconds.
  final _audioRecorder =
      Record(); // This is an instance of the Record class to manage audio recording.
  final player =
      AudioPlayer(); // This is an instance of the AudioPlayer class to manage audio playback.

  Amplitude? _amplitude; // This tracks the current amplitude of the audio.

  // The initState method is called when this object is inserted into the tree.
  // It initializes the object's state.
  @override
  void initState() {
    super.initState();

    // Ensure that the widget updates its state after the first frame has been displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  // The dispose method is called when this object is removed from the tree permanently,
  // which is an appropriate time to cancel any active subscriptions or end any ongoing operations
  // such as timers or animations.
  void dispose() {
    _timer?.cancel(); // Cancel the timer tracking the recording duration.
    _ampTimer?.cancel(); // Cancel the timer tracking the amplitude.
    _audioRecorder.dispose(); // Dispose the audio recorder.
    player.stop(); // Stop the audio player.
    super.dispose();
  }

  // This method starts recording audio.
  Future<void> _start() async {
    try {
      // Ensure that the application has the necessary permissions to record audio.
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start(); // Start recording.

        // Check if the recording has started and update the state.
        bool isRecording = await _audioRecorder.isRecording();
        setState(() {
          _isRecording = isRecording;
          _recordDuration = 0;
        });

        // Start the timer to track the duration of the recording.
        _startTimer();

        // Stop the recording after 10 seconds.
        Future.delayed(Duration(seconds: 10), () {
          if (_isRecording) {
            _stop();
          }
        });
      }
    } catch (e) {
      if (kDebugMode) {
        print(
            e); // If there's an error in the try block, catch it and print it in debug mode.
      }
    }
  }

  // This method stops recording audio.
  Future<void> _stop() async {
    _timer?.cancel(); // Cancel the timer tracking the recording duration.
    _ampTimer?.cancel(); // Cancel the timer tracking the amplitude.

    // This is the path of the recorded file.
    path = await _audioRecorder
        .stop(); // Stop recording and get the path of the audio file.

    // Update the state to reflect that recording has stopped.
    setState(() => _isRecording = false);
    setState(() => _isPaused = true);
  }

  // This method plays the recorded audio.
  Future<void> _play() async {
    await player
        .setReleaseMode(ReleaseMode.LOOP); // Set the player to loop the audio.
    kIsWeb
        ? await player.play(path!)
        : await player.play(path!); // Play the audio.

    // Update the state to reflect that the audio is playing.
    setState(() => _isPaused = false);
    setState(() => _isPlaying = true);
  }

  // This method pauses the audio playback.
  Future<void> _pause() async {
    await player.pause(); // Pause the audio.

    // Update the state to reflect that the audio is paused.
    setState(() => _isPaused = true);
    setState(() => _isPlaying = false);
  }

  // Helper function to format the timer displayed while recording.
  Widget _buildTimer() {
    final String minutes = _formatNumber(_recordDuration ~/ 60);
    final String seconds = _formatNumber(_recordDuration % 60);

    return Text(
      '$minutes : $seconds',
      style: FlutterFlowTheme.of(context).bodyText1,
    );
  }

  // Helper function to display appropriate text based on the recording/playback state.
  Widget _buildText() {
    if (_isRecording) {
      return _buildTimer();
    } else if (_isPaused) {
      return Text(
        'Tap to listen',
        style: FlutterFlowTheme.of(context).bodyText1,
      );
    } else if (_isPlaying) {
      return Text(
        'Tap to pause',
        style: FlutterFlowTheme.of(context).bodyText1,
      );
    } else {
      return Text(
        'Tap to record',
        style: FlutterFlowTheme.of(context).bodyText1,
      );
    }
  }

  // Helper function to build a widget with the text to be displayed.
  Widget _buildSubHeader() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildText(),
        ],
      ),
    );
  }

  // Helper function to build a widget that either records, stops recording, plays, or pauses.
  Widget _buildRecorder() {
    if (_isRecording) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _stop();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0x4DD9376E),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.stop_rounded,
              color: FlutterFlowTheme.of(context).tertiaryColor,
              size: 45,
            ),
          ),
        ),
      );
    } else if (_isPaused) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _play();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 45,
            ),
          ),
        ),
      );
    } else if (_isPlaying) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _pause();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.pause_rounded,
              color: FlutterFlowTheme.of(context).alternate,
              size: 45,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
        child: InkWell(
          onTap: () async {
            _start();
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0x4DD9376E),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.mic_none,
              color: FlutterFlowTheme.of(context).tertiaryColor,
              size: 45,
            ),
          ),
        ),
      );
    }
  }

  // Helper function to format a number to a 2-digit string.
  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0' + numberStr;
    }

    return numberStr;
  }

  // This function starts two timers: one for updating the recorded duration and one for fetching
  // the current amplitude of the recording.
  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer.
    _ampTimer?.cancel(); // Cancel any existing amplitude timer.

    // Start a new timer that ticks every second to update the duration of the recording.
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });

    // Start a new timer that ticks every 200 milliseconds to update the amplitude of the recording.
    _ampTimer =
        Timer.periodic(const Duration(milliseconds: 200), (Timer t) async {
      _amplitude = await _audioRecorder.getAmplitude();
      setState(() {});
    });
  }

  // This is the build function, which creates the user interface of the widget.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRecorder(), // This is the button to start/stop recording or play/pause playback.
              _buildSubHeader(), // This is the text underneath the button, indicating the current state.
            ],
          ),
        ],
      ),
    );
  }
}
