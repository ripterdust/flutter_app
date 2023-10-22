import 'package:clinic_app/screens/home/widgets/upcomingAppointment/widgets/appointment_annotation.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    BoxDecoration btnDecoration = BoxDecoration(
      color: colors.primary,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
    );

    BoxDecoration cardDecoration = BoxDecoration(
      color: colors.secondary.withOpacity(0.1),
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
    );

    const TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 19,
    );

    return Column(
      children: [
        Container(
          decoration: cardDecoration,
          width: double.infinity,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    child: Text(
                      "12:30 PM, Jan 26",
                      style: textStyle,
                    ),
                  ),
                  Container(
                    decoration: btnDecoration,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const AppointmentAnotation(
                icon: Icons.healing,
                anotation: "dr Allan Lande, Cardiologist.",
              ),
              const AppointmentAnotation(
                icon: Icons.location_on,
                anotation: "La paz, Hospital.",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
