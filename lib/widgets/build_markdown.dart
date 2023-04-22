import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class BuildMarkdownWidget extends StatelessWidget {
  const BuildMarkdownWidget({
    Key? key,
    required this.data,
    this.tocController,
  }) : super(key: key);

  final String data;
  final TocController? tocController;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return MarkdownWidget(
      data: data,
      tocController: tocController,
      config: isDark ? MarkdownConfig.darkConfig : MarkdownConfig.defaultConfig,
    );
  }
}
