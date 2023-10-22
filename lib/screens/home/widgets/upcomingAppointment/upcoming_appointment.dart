import 'package:clinic_app/core/screen/widgets/module_title.dart';
import 'package:clinic_app/screens/home/widgets/upcomingAppointment/widgets/appointment_card.dart';
import 'package:flutter/material.dart';

class UpcomingAppointment extends StatelessWidget {
  const UpcomingAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModuleTitle(title: "Upcoming appointment"),
              SizedBox(
                height: 8,
                width: 100,
              ),
              AppointmentCard(),
            ],
          ),
        ),
      ],
    );
  }
}
