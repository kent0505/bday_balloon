import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bottom/bottom_bloc.dart';
import '../blocs/profile/profile_bloc.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/image_widget.dart';
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
                    BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                        if (state is ProfileLoaded) {
                          return Row(
                            children: [
                              SizedBox(width: 20),
                              ImageWidget(
                                image: state.image,
                                height: 44,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Hello, ${state.name.isEmpty ? 'User' : state.name}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'w800',
                                ),
                              ),
                            ],
                          );
                        }
                        return Container();
                      },
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
