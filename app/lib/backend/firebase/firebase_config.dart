import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB6tZenpYDo9HpPg8pFMbKRA6KVDZKie6k",
            authDomain: "iotx-8a230.firebaseapp.com",
            projectId: "iotx-8a230",
            storageBucket: "iotx-8a230.appspot.com",
            messagingSenderId: "1057640820594",
            appId: "1:1057640820594:web:632bfd8ff3303b17cdb7eb"));
  } else {
    await Firebase.initializeApp();
  }
}
