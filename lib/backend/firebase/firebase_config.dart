import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDCyryDag-I8VMIChn_kiC2sVtL731BGq8",
            authDomain: "todo-3l7z66.firebaseapp.com",
            projectId: "todo-3l7z66",
            storageBucket: "todo-3l7z66.firebasestorage.app",
            messagingSenderId: "526328792987",
            appId: "1:526328792987:web:cc4671ee7bf060f01a433e"));
  } else {
    await Firebase.initializeApp();
  }
}
