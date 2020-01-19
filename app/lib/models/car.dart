import 'package:flutter/material.dart';

class Car {
  String id;
  String model;
  String brand;
  String fuelType; // petrol, diesel, cng
  String nickName;

  Car({
    @required this.brand,
    @required this.fuelType,
    @required this.model,
    this.nickName,
    this.id,
  });
}
