import 'package:flutter/material.dart';

import '../widgets/page_title.dart';
import '../widgets/scaffold2.dart';

class FriendAddScreen extends StatefulWidget {
  const FriendAddScreen({super.key});

  @override
  State<FriendAddScreen> createState() => _FriendAddScreenState();
}

class _FriendAddScreenState extends State<FriendAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold2(
      body: Column(
        children: [
          PageTitle(
            title: 'Add friend',
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
