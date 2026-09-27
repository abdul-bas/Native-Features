

import 'package:flutter/material.dart';
import 'package:native_features/core/constants/app_colors.dart';

class InfoNoteWidget extends StatelessWidget {
  final String text;
  const InfoNoteWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.line),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.info_outline_rounded,
            size: 18,
            color: AppColors.inkMuted,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12.5,
                color: AppColors.inkMuted,
                height: 1.45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}