import 'package:clinic_app/core/entities/hospital_entity.dart';
import 'package:clinic_app/core/screen/widgets/module_title.dart';
import 'package:clinic_app/screens/home/widgets/hospitals/widget/hospital.dart';
import 'package:clinic_app/screens/hospital/hospitalList/hospital_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Hospitals extends StatelessWidget {
  final List<HospitalEntity> hospitals;

  const Hospitals({
    super.key,
    required this.hospitals,
  });

  @override
  Widget build(BuildContext context) {
    buildHospital(int index) {
      final hospital = hospitals[index];
      return Hospital(
        name: hospital.name,
        address: hospital.address,
      );
    }

    moveToHospitals() {
      context.pushNamed(HospitalListScreen.name);
    }

    const ButtonStyle buttonStyle = ButtonStyle();

    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ModuleTitle(
                title: "Available hospitals",
              ),
              for (int i = 0; i < hospitals.length; i++) buildHospital(i),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: buttonStyle,
                    onPressed: moveToHospitals,
                    child: const Text("View All"),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
