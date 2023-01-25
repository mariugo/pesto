import 'package:flutter/material.dart';

import 'package:pesto/theme/theme.dart';

class AdaptiveCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const AdaptiveCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final typography = theme.textTheme;
    final colors = theme.colorScheme;
    final basilTheme = theme.extension<BasilTheme>();
    return Column(
      children: [
        Expanded(
          child: SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    24,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4, top: 32),
          child: Text(
            title,
            style: typography.displaySmall!.copyWith(
              color: theme.brightness == Brightness.light
                  ? basilTheme?.tertiaryColor
                  : colors.tertiary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          subtitle,
          style: typography.bodyLarge!.copyWith(
            color: colors.primary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class AdaptiveCards extends StatelessWidget {
  final List<Widget> cards;
  final double cardWidth;

  const AdaptiveCards({
    Key? key,
    required this.cards,
    required this.cardWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemSize = Size(cardWidth, 192);

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final crossAxisCount = (width / itemSize.width).floor();
        final childAspectRatio = width / (crossAxisCount * itemSize.width);
        return GridView.count(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 32,
          mainAxisSpacing: 32,
          childAspectRatio: childAspectRatio,
          children: [
            for (final card in cards) SizedBox(width: cardWidth, child: card),
          ],
        );
      },
    );
  }
}
