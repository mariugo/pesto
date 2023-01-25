import 'package:flutter/material.dart';

class SelectedChip extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const SelectedChip({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return RawChip(
        label: Text(label),
        onPressed: onTap,
        deleteIcon: const Icon(Icons.close, size: 18),
        onDeleted: onTap,
        backgroundColor: colors.secondaryContainer,
        deleteIconColor: colors.onSecondaryContainer,
        labelStyle: TextStyle(color: colors.onSecondaryContainer),
        deleteButtonTooltipMessage: 'Remove $label',
        side: BorderSide(color: colors.secondaryContainer));
  }
}
