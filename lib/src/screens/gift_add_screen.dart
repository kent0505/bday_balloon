import 'package:flutter/material.dart';

import '../widgets/page_title.dart';
import '../widgets/scaffold2.dart';

class GiftAddScreen extends StatefulWidget {
  const GiftAddScreen({super.key});

  @override
  State<GiftAddScreen> createState() => _GiftAddScreenState();
}

class _GiftAddScreenState extends State<GiftAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold2(
      body: Column(
        children: [
          PageTitle(
            title: 'Add Gift',
            back: true,
          ),
          Expanded(
            child: ListView(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
