import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';


class CreateNewAdventure extends StatefulWidget {
  const CreateNewAdventure({
    super.key, 
    required this.labelText,
  });

  final String labelText;

  @override
  State<CreateNewAdventure> createState() => _CreateNewAdventureState();
}

class _CreateNewAdventureState extends State<CreateNewAdventure> {

  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
       height: 50,
       width: double.infinity,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: secondary
       ),
      child: TextField(
        controller: controller,
        focusNode: FocusNode(),
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        onChanged: (value) {
          print(value);}
      ),
     ),
    );
  }
}