import 'package:clinic_app/core/entities/hospital_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BaseProvider extends ChangeNotifier {
  final List<HospitalEntity> _hospitals = [
    HospitalEntity(
      name: "Hospital General",
      address: "Avenida Principal, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Santa María",
      address: "Calle Central, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Juan",
      address: "Avenida Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Universitario",
      address: "Calle Principal, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital del Este",
      address: "Avenida Central, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital de la Salud",
      address: "Calle Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Rafael",
      address: "Avenida Central, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Francisco",
      address: "Calle Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Regional",
      address: "Avenida Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San José",
      address: "Calle Central, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Santa Rosa",
      address: "Avenida Principal, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Miguel",
      address: "Calle Central, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital de la Esperanza",
      address: "Avenida Central, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital del Norte",
      address: "Calle Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Metropolitano",
      address: "Avenida Central, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Antonio",
      address: "Calle Principal, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Santa Ana",
      address: "Avenida Principal, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Pedro",
      address: "Calle Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital de la Paz",
      address: "Avenida Central, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Carlos",
      address: "Calle Principal, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Santa Clara",
      address: "Avenida Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Martín",
      address: "Calle Central, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital Santa Isabel",
      address: "Avenida Central, Ciudad",
    ),
    HospitalEntity(
      name: "Hospital del Sur",
      address: "Calle Principal, Otra Ciudad",
    ),
    HospitalEntity(
      name: "Hospital San Lorenzo",
      address: "Avenida Principal, Ciudad",
    ),
  ];

  List<HospitalEntity> getListHospitals() {
    return _hospitals;
  }

  List<HospitalEntity> getNHospitals(int count) {
    if (count >= _hospitals.length) {
      return _hospitals;
    }
    final int startIndex = _hospitals.length - count;
    return _hospitals.sublist(startIndex);
  }
}
