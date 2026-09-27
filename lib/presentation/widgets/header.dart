
import 'package:flutter/material.dart';
import 'package:native_features/core/constants/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Native Features',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.4,
                    color: AppColors.ink,
                    height: 1.15,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Test device hardware integrations',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.inkMuted,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}