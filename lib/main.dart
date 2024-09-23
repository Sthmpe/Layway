import 'package:amazon_clone/constant/global.dart';
import 'package:amazon_clone/router.dart';
import 'package:amazon_clone/view/auth/authScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: GlobalVairables.primaryColor,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.orange,
            title: const Text('Layaway'),
            centerTitle: true,
          ),
          body:  Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Text("Hello Layaway"),
                Builder(
                  builder: (context) {
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AuthScreen.routeName);
                        },
                        child: const Text("Click Me"));
                  }
                )
              ]))),
    );
  }
}
