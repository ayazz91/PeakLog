import 'package:flutter/material.dart';

class FilterChip_Category extends StatelessWidget {
  const FilterChip_Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 24),
            child: FilterChip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
              label: Text('All', style: TextStyle(color: Colors.white60)),
              onSelected: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 24),
            child: FilterChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              label: Text('Mountains', style: TextStyle(color: Colors.white60)),
              onSelected: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 24),
            child: FilterChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              label: Text('Hiking', style: TextStyle(color: Colors.white60)),
              onSelected: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 24),
            child: FilterChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              label: Text('Camping', style: TextStyle(color: Colors.white60)),
              onSelected: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 24),
            child: FilterChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              label: Text('Other', style: TextStyle(color: Colors.white60)),
              onSelected: (value) {},
            ),
          ),
        ],
      ),
    );
  }
  }