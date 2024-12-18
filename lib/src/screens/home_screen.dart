import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bottom/bottom_bloc.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/scaffold2.dart';
import 'gifts_screen.dart';
import 'guests_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold2(
      body: BlocProvider(
        create: (context) => BottomBloc(),
        child: Stack(
          children: [
            BlocConsumer<BottomBloc, BottomState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is BottomGuests) return GuestsScreen();

                if (state is BottomGifts) return GiftsScreen();

                if (state is BottomSettings) return SettingsScreen();

                return Column(
                  children: [
                    SizedBox(
                      height: 20 + MediaQuery.of(context).viewPadding.top,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(44),
                          child: Image.file(
                            File(state is BottomInitial ? state.image : ''),
                            height: 44,
                            width: 44,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffD9D9D9),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Hello, ${state is BottomInitial ? state.name : ''}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'w800',
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            const BottomWidget(),
          ],
        ),
      ),
    );
  }
}
