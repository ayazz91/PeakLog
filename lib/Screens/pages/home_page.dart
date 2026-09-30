import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';
import 'package:peaklog/details_screen/view_details_screen.dart';
import 'package:peaklog/widgets/adventure_card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10, ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Peaklog', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Text('Your personal peak log', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      actions: [
  Padding(
    padding: const EdgeInsets.only(right: 12),
    child: IconButton(
      icon: const Icon(
        Icons.menu,
        size: 30,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/menu');
      },
    ),
  ),
],
),
body: SingleChildScrollView(
 child: Column(
  children: [
    // Верхний блок
    Container(
      height: 300,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        image: const DecorationImage(
          image: AssetImage('assets/images/SatpayevPeak.jpg'), // надо будет переделать получение изоброжения
          fit: BoxFit.cover,
        ),
       ),

       child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(11),
                  bottomRight: Radius.circular(11),
                ),
              ),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Satpayev Peak'),
                        Text('September 1, 2026'),
                        Text('8.6 · +2300m · 4h 20m'),
                      ],
                    ),

                    Spacer(),
                 GestureDetector(
                   onTap: () {
                   Navigator.push(
                    context,
                       MaterialPageRoute(
                        builder: (context) => const PeakDetailsPage(),
                    ),
                   );
                  },
                child: Container(
                 height: 35,
                 width: 100,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 color: Colors.white70,
                 ),
                child: const Center(
                   child: Text(
                    'View details',
                     style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                        ),
                        ),
                       ),
                      ),
                    )
                  ],
                ),
            ),
          ],
       ),
       ),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: secondary,
          ),
          height: 100,
          width: 355,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    Text('Kumbel', style: TextStyle(color: Colors.white70),),
                    SizedBox(height: 2),
                    Text('September 14 · 12.4 km · +850 m'),
                    SizedBox(height: 4),
                    Row(
                  children: [
                   Text(
                    'View Plan',
                     style: TextStyle(
                     color: const Color.fromARGB(255, 126, 167, 78),
                   ),
                 ),
                  SizedBox(width: 5),
                Icon(
                 Icons.arrow_forward,
                     color: const Color.fromARGB(255, 126, 167, 78),
                     size: 18,
                     ),
                    ],
                  )  
                  ],
                ),
              ),
            ],
          ),
         )
      ],
    ),
    SizedBox(height: 10),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
    children: [
      adventureCard('Bap'),

    SizedBox(width: 12),

       adventureCard('Furmanovka'),

    SizedBox(width: 12),

       adventureCard('Bukreev'),
  ],
),
    )
     ],
    ),   
    ),
   );
  }
}