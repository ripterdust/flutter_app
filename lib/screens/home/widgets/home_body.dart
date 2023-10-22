import 'package:clinic_app/core/providers/base_provider.dart';
import 'package:clinic_app/screens/home/widgets/hospitals/hospitals.dart';
import 'package:clinic_app/screens/home/widgets/medicalSpecializations/medical_speciatizations.dart';
import 'package:clinic_app/screens/home/widgets/upcomingAppointment/upcoming_appointment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseProvider = context.watch<BaseProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const UpcomingAppointment(),
            const MedicalSpecializations(),
            Hospitals(
              hospitals: baseProvider.getListHospitals(),
            ),
          ],
        ),
      ),
    );
  }
}
