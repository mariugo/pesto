import 'package:flutter/material.dart';
import 'package:pesto/presentation/widgets/selected_chip.dart';

class FilterList extends StatelessWidget {
  final List<String> allFilters, activeFilters;

  const FilterList({
    Key? key,
    required this.activeFilters,
    required this.allFilters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final filter in allFilters)
            Padding(
              padding: const EdgeInsets.all(4),
              child: activeFilters.contains(filter)
                  ? SelectedChip(
                      label: filter,
                      onTap: () {},
                    )
                  : ChoiceChip(
                      selected: false,
                      label: Text(filter),
                      tooltip: 'Add "$filter" filter',
                      onSelected: (_) {},
                    ),
            )
        ],
      ),
    );
  }
}
