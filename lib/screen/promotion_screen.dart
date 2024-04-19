import 'package:flutter/material.dart';
import 'package:sem2/screen/widget/vertically_scrollable_tabs.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Promotion!'),
        ),
        body: VerticallyScrollableTabs());
  }
}
