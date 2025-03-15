import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: const Color.fromRGBO(0, 0, 0, 1),
      // systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Scroll',
            style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 1)),
          ),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        ),
        body: ListWheelScrollView(
          itemExtent: 400,
          diameterRatio: 3.4,
          useMagnifier: true,
          magnification: 1,
          children: [
            Image.asset('assets/images/a.jpg'),
            Image.asset('assets/images/a.jpg'),
            Image.asset('assets/images/a.jpg'),
            Image.asset('assets/images/a.jpg'),
            Image.asset('assets/images/a.jpg'),
          ],
        ),
      ),
    ),
  );
}
