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
  TimeOfDay? selectedTime;
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
             SizedBox(width: 20),
              GestureDetector(
                onTap: () async {
                final pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
               );
                 if (pickedTime != null) {
                 setState(() {
                  selectedTime = pickedTime;
                   });
                  }
                },
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
          Icons.more_time,
          color: Colors.white70,
          size: 20,
        ),

        const SizedBox(width: 10),

        Text(
          selectedTime != null
    ? '${selectedTime!.hour}:${selectedTime!.minute}'
    : 'Select Time',
               style: const TextStyle(
                color: Colors.white,
                  fontSize: 14,
                     ),
                     ),
                  ],
               ),
                ),
              )
          ],
         ),
         SizedBox(height: 20),
         
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: secondary,
              ),
              height: 50,
              width: double.infinity,
              child:  Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.area_chart_rounded, 
                      color: Colors.white60,
                    ),
                    SizedBox(width: 20),
                    Text('Moderate', style: TextStyle(color: Colors.white60 ),)
                  ],
                ),
              ),
             ),
           ],
         )
      ),
        ),
    );
  }
}

