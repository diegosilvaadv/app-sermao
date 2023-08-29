import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCD7vqmwWj9YzAcSyZReFxStas6utvZyqo",
            authDomain: "sermoes-e9b7b.firebaseapp.com",
            projectId: "sermoes-e9b7b",
            storageBucket: "sermoes-e9b7b.appspot.com",
            messagingSenderId: "534909174384",
            appId: "1:534909174384:web:82733b6f751bd84c276ab5"));
  } else {
    await Firebase.initializeApp();
  }
}
