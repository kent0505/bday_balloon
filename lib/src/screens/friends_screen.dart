import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/btn.dart';
import '../widgets/page_title.dart';
import '../widgets/scaffold2.dart';
import 'friend_add_screen.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold2(
      body: Stack(
        children: [
          Column(
            children: [
              PageTitle(
                title: 'My friends',
                back: true,
              ),
              Expanded(
                child: ListView(
                  children: [],
                ),
              ),
            ],
          ),
          Positioned(
            right: 33,
            bottom: 60,
            child: Btn(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FriendAddScreen();
                    },
                  ),
                );
              },
              child: SvgPicture.asset('assets/add.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
