import 'package:flutter/material.dart';

import 'home_screen.dart';
void main()=>runApp(const CopyNumber());
class CopyNumber extends StatelessWidget {
  const CopyNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Number copy to clipboard',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
