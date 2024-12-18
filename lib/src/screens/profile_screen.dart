import 'package:flutter/material.dart';

import '../widgets/page_title.dart';
import '../widgets/scaffold2.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold2(
      body: Column(
        children: [
          PageTitle(
            title: 'Profile',
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
