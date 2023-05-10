import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAw7rB1MsvfwPOPliN90cZdy2gJeLT1gWQ",
            authDomain: "bonjuur1.firebaseapp.com",
            projectId: "bonjuur1",
            storageBucket: "bonjuur1.appspot.com",
            messagingSenderId: "429941946513",
            appId: "1:429941946513:web:0d5158af7898582b65a730",
            measurementId: "G-BT2E7TFGBT"));
  } else {
    await Firebase.initializeApp();
  }
}
