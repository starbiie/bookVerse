import 'package:bookverse/Controller/Providers/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Controller/user_bakend_servieces.dart';
import 'Views/admin/adminHomepage.dart';
import 'Views/continue_as.dart';
import 'Views/users/welcome.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProviders()),
        ChangeNotifierProvider(create: (context) => AuthenticationProvider()),
      ],
      child: MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData(
      fontFamily: GoogleFonts.abhayaLibre().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),debugShowCheckedModeBanner: false,
        home: Continue_As(),
      ),
    );
  }
}