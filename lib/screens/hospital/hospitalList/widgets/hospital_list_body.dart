import 'package:clinic_app/core/providers/base_provider.dart';
import 'package:clinic_app/screens/hospital/widgets/hospital_list_element.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HospitalListBody extends StatelessWidget {
  const HospitalListBody({super.key});

  @override
  Widget build(BuildContext context) {
    final hospitalsList = context.watch<BaseProvider>();

    Widget buildHospitals(int index) {
      final hospital = hospitalsList.getListHospitals()[index];

      return HospitalListElement(
        name: hospital.name,
        address: hospital.address,
      );
    }

    return Column(
      children: [
        for (int i = 0; i < hospitalsList.getListHospitals().length; i++)
          buildHospitals(i)
      ],
    );
  }
}
