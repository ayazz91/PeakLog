import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';

class PeakDetailsPage extends StatelessWidget {
  const PeakDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        title: const Text('Satpayev Peak'),
        iconTheme:IconThemeData(
          color: Colors.white
        ),
      ),
      body: const Center(
        child: Text(
          'Информация о Satpayev Peak',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}