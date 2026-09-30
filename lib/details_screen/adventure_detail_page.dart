import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';
import 'package:peaklog/Screens/pages/adventures_page.dart';

class AdventureDetailPage extends StatefulWidget {
  const AdventureDetailPage({super.key});

  @override
  State<AdventureDetailPage> createState() => _AdventureDetailPageState();
}

class _AdventureDetailPageState extends State<AdventureDetailPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
            child: Image.asset(
              height: 280,
              width: double.infinity,
              'assets/images/kumbelPeak.webp',
              fit: BoxFit.cover,
            ),
          ),
           Positioned(
             top: 0,
             left: 0,
             right: 0,
             height: 280,
             child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xFF14141A)
                    ]
                  ),
                ),
              ),
              ),
          Positioned(
             top: 10,
              left: 5,
              child: IconButton(
               onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdventuresPage()
              )
              );
            },
               icon: const Icon(
                 Icons.arrow_back,
                  color: Colors.white,
                 size: 28,
                ),
              ),
            ),
              Positioned(
          left: 25,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kumbel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'September 1, 2026',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
              ),
          ],
         ),
           Padding(
             padding: const EdgeInsets.only(left: 25, right: 25),
             child: Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tertiary
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 10),
                        child: Text('8.6 km', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 10),
                        child: Text('Distance'),
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('+720 m', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('Elevation'),
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('4h 10m', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('Duration'),
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Moderate', style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text('Difficulty'),
                      )
                    ],
                  ),
                ],
              ),
             ),
           ),
           SizedBox(height: 10),
           Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Text(
          'My Story',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
              ),
             ),
      ),SizedBox(height: 5),

      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Text(
          'Started early in the morning. The weather was clear and the trail was almost empty. Reached the ridge by noon — the view of the surrounding peaks was breathtaking. Spent some time just sitting and watching the clouds move across the valley.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
              ),
             ),
      ), SizedBox(height: 45),

      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: scrollCard
          ),
          child: Center(child: Text('Map · recorded route', style: TextStyle(fontWeight: FontWeight.w400,),)),
        ),
      ),
      SizedBox(height: 15),

      Text('Photo Journal', style: TextStyle(fontWeight: FontWeight.bold),),

      SizedBox(height: 20),

      SingleChildScrollView(
       scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: scrollCard,
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 140,
              width: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: scrollCard,
              ),
            ),
            SizedBox(width: 20),

            Container(
              height: 140,
              width: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: scrollCard,
              ),
            )
          ],
        ),
        
      ),
      SizedBox(height: 20),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: secondary
          ),
          child: Center(child: Text('Edit adventure')),
          
        ),
      ),
      SizedBox(height: 30)
          ],
            ),
          )
        ],
      ),
      )
      )
    );
  }
}