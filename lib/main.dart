import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_auth/screens/dashboard.dart';
import 'package:supabase_auth/screens/sign_in_screen.dart';
import 'package:supabase_auth/screens/sign_up_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://ljpayzulfklvveqenrcl.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxqcGF5enVsZmtsdnZlcWVucmNsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTYzMjI0ODEsImV4cCI6MTk3MTg5ODQ4MX0.yFSPd_AExElix-jbxl03lnl4GGOpeuHBx6zYy6vTNiQ',
      authCallbackUrlHostname: 'login-callback', // optional
      debug: true // optional
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SignInScreen(),
        '/signup': (_) => const SignUpScreen(),
        '/dashboard': (_) => const DashboardScreen(),
      },
    );
  }
}
