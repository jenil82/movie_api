import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_api/screen/provider/m_provider.dart';
import 'package:movie_api/screen/view/m_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MovieProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    ),
  );
}
