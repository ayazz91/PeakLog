import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';
import 'package:peaklog/widgets/create_new_adventure.dart';

class NewAdventurePage extends StatefulWidget {
  const NewAdventurePage({super.key});

  @override
  State<NewAdventurePage> createState() => _NewAdventurePageState();
}

class _NewAdventurePageState extends State<NewAdventurePage> {
  DateTime? selectedDate;
  bool isChecked = false;

  Future<void> selecteDate() async{
    final DateTime? picked = await showDatePicker(
     context: context,
     initialDate: DateTime.now(),
     firstDate: DateTime(2025),
     lastDate: DateTime(2027)
    );
    if(picked != null){
      setState(() {
        selectedDate = picked;
      });
    }
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(
                 Icons.arrow_back,
                  color: Colors.white,
                 size: 28,
                ),
              )
            ),
            ),
            SizedBox(width: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 5),
              child: Text('New Adventure', style: TextStyle(color: Colors.white),),
              
            ),
            SizedBox(width: 30),
            GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Save', style: TextStyle(color: const Color.fromARGB(255, 108, 148, 61)),),
              
            ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('BASIC INFO'),
                
                 CreateNewAdventure(labelText: 'e.g. Big Almaty Peak'),
                 CreateNewAdventure(labelText: 'Mountain or trail name',),
            
                 SizedBox(height: 15),

              Text('DATE & TIME'),
                 SizedBox(height: 10),
                
                Row(
                  children: [
                    GestureDetector(
              onTap: selecteDate,
             child: Container(
                height: 50,
               width: 165,
               padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
            color: secondary,
          ),
    child: Row(
      children: [
        const Icon(
          Icons.calendar_today,
          color: Colors.white70,
          size: 20,
        ),

        const SizedBox(width: 10),

        Text(
          selectedDate == null
              ? 'Select date'
              : '${selectedDate!.day}.${selectedDate!.month}.${selectedDate!.year}',
               style: const TextStyle(
                color: Colors.white,
                  fontSize: 14,
                     ),
                     ),
                  ],
               ),
                ),
             ),
          ],
          )
        ],
      ),
        ),
   ),
    );
  }
}

