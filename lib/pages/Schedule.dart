import 'package:flutter/material.dart';
import 'dummy_data.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: scheduleList.length,
          itemBuilder: (context, index) {
            final Schedule place = scheduleList[index];
            return Card(
              child: Column(
                children: [
                  Text(place.coverageArea),
                  Text(place.wasteBankName),
                  Text(place.implementationDate),
                  Text(place.startTime),
                  Text(place.endTime),
                  Image.network(place.imageUrl[0])
                ],
              ),
            );
          }),
    );
  }
}
