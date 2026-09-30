import 'package:flutter/material.dart';

class AdventurListCard extends StatelessWidget {
  const AdventurListCard({
    super.key,
    required this.name,
    required this.date,
    required this.stats,
    required this.image,
    required this.onTap,
  });

  final String name;
  final String date;
  final String stats;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: GestureDetector(
              onTap: onTap,
            child: Container(
                  width: double.infinity,
                   height: 110,
                    decoration: BoxDecoration(
                     color: Color(0xFF1E1E23),
                     borderRadius: BorderRadius.circular(12),
             ),
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), 
                      image: DecorationImage(image: AssetImage(image),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(name),
                     Text(date),
                     Text(stats),
                    ],
                  ),
                ),
              ],
             ),
            ),
          )
    );
  }
}