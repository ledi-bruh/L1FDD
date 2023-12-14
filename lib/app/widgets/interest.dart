import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

class Interest extends StatefulWidget {
  const Interest({
    super.key,
    required this.name,
    this.isSelected = false,
  });

  final String name;
  final bool isSelected;

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected  = widget.isSelected;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.name),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: const BorderSide(color: AppColors.transparent),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 7.0,
      ),
      selected: _isSelected,
      backgroundColor: AppColors.chipsBrandDisabled,
      selectedColor: AppColors.chipsBrandEnabled,
      onSelected: (_) {
        setState(() {
          _isSelected  = _;
          setState(() {});
        });
      },
    );
  }
}
