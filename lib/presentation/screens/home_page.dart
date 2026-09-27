import 'package:flutter/material.dart';

import 'package:native_features/core/constants/app_colors.dart';
import 'package:native_features/data/datasources/native/native_features.dart';
import 'package:native_features/presentation/widgets/header.dart';
import 'package:native_features/presentation/widgets/info_note.dart';
import 'package:native_features/presentation/widgets/module_group.dart';
import 'package:native_features/presentation/widgets/module_row.dart';
import 'package:native_features/presentation/widgets/section_label.dart';


class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: HeaderWidget()),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionLabelWidget('Hardware modules'),
                    const SizedBox(height: 10),
                    ModuleGroupWidget(
                      children: [
                        ModuleRowWidget(
                          icon: Icons.location_on_outlined,
                          title: 'GPS',
                          description: 'Read the current device coordinates',
                          onTap: () async {
                            final location =
                                await NativeFeatures.getLocation();
                            debugPrint('Location: $location');
                          },
                        ),
                        ModuleRowWidget(
                          icon: Icons.camera_alt_outlined,
                          title: 'Camera',
                          description: 'Open the camera and capture a photo',
                          onTap: () async {
                            final camera = await NativeFeatures.openCamera();
                            debugPrint('Camera: $camera');
                          },
                        ),
                        ModuleRowWidget(
                          icon: Icons.sensors_outlined,
                          title: 'Motion sensors',
                          description: 'Accelerometer and gyroscope readings',
                          isLast: true,
                          onTap: () async {
                            final accelerometer =
                                await NativeFeatures.getAccelerometer();
                            final gyroscope =
                                await NativeFeatures.getGyroscope();
                            debugPrint('Accelerometer: $accelerometer');
                            debugPrint('Gyroscope: $gyroscope');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const SectionLabelWidget('About these tests'),
                    const SizedBox(height: 10),
                    const InfoNoteWidget(
                      text:
                          'Each module calls the corresponding native API directly '
                          'and prints its result to the debug console. Use this '
                          'screen to verify platform channel wiring on a real device.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

