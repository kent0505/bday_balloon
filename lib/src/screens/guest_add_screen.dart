import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/btn.dart';
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
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: 20),
                Btn(
                  child: SvgPicture.asset('assets/no_image.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
