import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/btn.dart';
import '../widgets/page_title.dart';
import 'gift_add_screen.dart';

class GiftsScreen extends StatelessWidget {
  const GiftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            PageTitle(
              title: 'Gifts',
              subtitle: '5 gifts',
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
                    return GiftAddScreen();
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
