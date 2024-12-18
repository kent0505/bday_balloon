import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/btn.dart';
import '../widgets/page_title.dart';
import 'guest_add_screen.dart';

class GuestsScreen extends StatelessWidget {
  const GuestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            PageTitle(
              title: 'Guests',
              subtitle: '9 guests',
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [],
              ),
            ),
          ],
        ),
        Positioned(
          right: 33,
          bottom: 105,
          child: Btn(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GuestAddScreen();
                  },
                ),
              );
            },
            child: SvgPicture.asset('assets/add.svg'),
          ),
        ),
      ],
    );
  }
}
