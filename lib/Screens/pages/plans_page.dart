import 'package:flutter/material.dart';
import 'package:peaklog/details_screen/new_adventure_page_detail.dart';
import 'package:peaklog/widgets/adventure_card_list.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Stack(
       children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Upcoming adventures', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white70)),
                  Text('Your plans for the mountains.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Planned adventures', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                AdventurListCard(
                  name: 'Big Almaty Peak',
                  stats: '12.3 km · +950 m · 6h 20m',
                  image: 'assets/images/kumbelPeak.webp',  
                  date: 'September 21',
                  onTap: () { 
                  },
                ),
                SizedBox(height: 10,),
                AdventurListCard(
                  name: 'Kok-Zhailau',
                  stats: '9.5 km · +580 m · 4h 45m',
                  image: 'assets/images/kumbelPeak.webp',
                  date: 'October 5',
                  onTap: () {
                  },
                ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20, right: 20),
                ),
                SizedBox(height: 5),
                Text('Plan a route, set a date, and keep your next climb in sight.'),
                const SizedBox(height: 20),
              ],
            )
          ],
        ),
        ),
        Positioned(
        left: 24,
        right: 24,
        bottom: 28,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const NewAdventurePage()));
          },
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFF6B956D),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              '+ New adventure',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ), 
        ),
        ),
        )
    ]
       ),
      )
    );
  }
}