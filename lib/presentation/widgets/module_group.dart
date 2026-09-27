
import 'package:flutter/material.dart';
import 'package:native_features/core/constants/app_colors.dart';

class ModuleGroupWidget extends StatelessWidget {
  final List<Widget> children;
  const ModuleGroupWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.line),
      ),
      child: Column(children: children),
    );
  }
}