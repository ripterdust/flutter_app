import 'package:flutter/material.dart';

class HospitalListElement extends StatelessWidget {
  final String name;
  final String address;
  const HospitalListElement(
      {super.key, required this.name, required this.address});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final BoxDecoration hospitalDecoration = BoxDecoration(
      color: colors.primary.withOpacity(.05),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    );

    final BoxDecoration iconDecoration = BoxDecoration(
      color: colors.primary,
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    );

    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: hospitalDecoration,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(
                  decoration: iconDecoration,
                  child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.blinds_outlined,
                        color: Colors.white,
                        size: 40,
                      )),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      address,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
