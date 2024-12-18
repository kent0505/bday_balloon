import 'package:flutter/material.dart';

import '../widgets/page_title.dart';
import '../widgets/scaffold2.dart';

class GuestAddScreen extends StatefulWidget {
  const GuestAddScreen({super.key});

  @override
  State<GuestAddScreen> createState() => _GuestAddScreenState();
}

class _GuestAddScreenState extends State<GuestAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold2(
      body: Column(
        children: [
          PageTitle(
            title: 'Add Guest',
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
