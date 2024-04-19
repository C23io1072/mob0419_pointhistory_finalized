import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Promotion!'),
        ),
        body: Column(
          children: [Text('Promotion screen text')],
        ));
  }
}
