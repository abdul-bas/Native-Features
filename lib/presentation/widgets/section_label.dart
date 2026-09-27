import 'package:flutter/material.dart';
import 'package:native_features/core/constants/app_colors.dart';

class SectionLabelWidget extends StatelessWidget {
  final String text;
  const SectionLabelWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.inkMuted,
      ),
    );
  }
}