import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class BuildMarkdownWidget extends StatelessWidget {
  const BuildMarkdownWidget({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return MarkdownWidget(
        data: data,
        config:
            isDark ? MarkdownConfig.darkConfig : MarkdownConfig.defaultConfig);
  }
}
