import 'package:clinic_app/core/entities/medical_specialization_entity.dart';
import 'package:clinic_app/core/screen/widgets/module_title.dart';
import 'package:clinic_app/screens/home/widgets/medicalSpecializations/widgets/specialitie.dart';
import 'package:flutter/material.dart';

class MedicalSpecializations extends StatelessWidget {
  const MedicalSpecializations({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    final List<MedicalSpecializationEntity> medicalSpecializations = [
      MedicalSpecializationEntity(
        icon: Icons.medical_information,
        name: "Dentidasta",
      ),
      MedicalSpecializationEntity(
        icon: Icons.medical_services,
        name: "Prueba",
      ),
      MedicalSpecializationEntity(
        icon: Icons.medication_liquid,
        name: "Juanito",
      ),
      MedicalSpecializationEntity(
        icon: Icons.medical_services_rounded,
        name: "Pedrito",
      ),
    ];

    Widget itemBuilder(int index) {
      final specialization = medicalSpecializations[index];

      return Speciality(
        icon: specialization.icon,
        text: specialization.name,
      );
    }

    const ButtonStyle buttonStyle = ButtonStyle();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ModuleTitle(title: "Medical Specializations"),
        const SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int index = 0;
                  index < medicalSpecializations.length;
                  index++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: itemBuilder(index),
                ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: buttonStyle,
              onPressed: () {},
              child: const Text("View All"),
            )
          ],
        )
      ],
    );
  }
}
