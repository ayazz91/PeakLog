import 'package:flutter/material.dart';
import 'package:peaklog/details_screen/adventure_detail_page.dart';
import 'package:peaklog/widgets/adventure_card_list.dart';
import 'package:peaklog/widgets/category_filterchip.dart';

class AdventuresPage extends StatelessWidget {
  const AdventuresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Adventures', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Text('Your story in the mountains.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          FilterChip_Category(),
          SizedBox(height: 20),
          
          AdventurListCard(
            name: 'Kumbel',
            date: 'August 24, 2026',
            stats: '11.2 km · +930 m · 5h 40m',
            image: 'assets/images/kumbelPeak.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdventureDetailPage()
              )
              );
            },
          ),
          SizedBox(height: 20),

          AdventurListCard(
            name: 'Furmanov',
            date: 'September 12, 2026',
            stats: '11.2 km · +930 m · 5h 40m',
            image: 'assets/images/kumbelPeak.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdventureDetailPage()
              )
              );
            },
          ),
                SizedBox(height: 20),
          AdventurListCard(
            name: 'Furmanov',
            date: 'September 12, 2026',
            stats: '11.2 km · +930 m · 5h 40m',
            image: 'assets/images/kumbelPeak.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdventureDetailPage()
              )
              );
            },
          ),
                SizedBox(height: 20),
          AdventurListCard(
            name: 'Furmanov',
            date: 'September 12, 2026',
            stats: '11.2 km · +930 m · 5h 40m',
            image: 'assets/images/kumbelPeak.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdventureDetailPage()
              )
              );
            },
          ),
              ],
             ),
            );
  }
}





