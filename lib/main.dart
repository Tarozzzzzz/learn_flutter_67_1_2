import 'package:flutter/material.dart';


import 'package:learn_flutter_67_1_2/first_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    // Step 6 Firestore CRUD operations
    const MaterialApp(home: FirstScreen(), debugShowCheckedModeBanner: false),
  );
}

