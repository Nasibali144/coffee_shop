// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/images.dart';
import 'package:coffee_shop/constants/strings.dart';
import 'package:flutter/material.dart';

class CoffeeModel {
  String id;
  String title;
  String description;
  double price;
  AssetImage assetImage;
  CoffeeType type;

  CoffeeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.assetImage,
    required this.type,
  });

  CoffeeModel copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    AssetImage? assetImage,
    CoffeeType? type,
  }) {
    return CoffeeModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      assetImage: assetImage ?? this.assetImage,
      type: type ?? this.type,
    );
  }

  @override
  bool operator ==(covariant CoffeeModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.price == price &&
        other.assetImage == assetImage &&
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        price.hashCode ^
        assetImage.hashCode ^
        type.hashCode;
  }
}

enum CoffeeType { tradicional, doces, especiais }

List<CoffeeModel> coffeeDataBase = [
  CoffeeModel(
      id: "1",
      title: Strings.expressoTradicional,
      description: Strings.expressoTradicionalExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_1,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "2",
      title: Strings.expressoAmericano,
      description: Strings.expressoAmericanoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_2,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "3",
      title: Strings.expressoCremoso,
      description: Strings.expressoCremosoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_3,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "4",
      title: Strings.latte,
      description: Strings.lattleExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_4,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "5",
      title: Strings.expressoGelado,
      description: Strings.expressoGeladoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_5,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "6",
      title: Strings.capuccino,
      description: Strings.capuccinoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_6,
      type: CoffeeType.doces),
  CoffeeModel(
      id: "7",
      title: Strings.mocaccino,
      description: Strings.mocaccinoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_7,
      type: CoffeeType.doces),
  CoffeeModel(
      id: "8",
      title: Strings.chocolateQuente,
      description: Strings.chocolateQuenteExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_8,
      type: CoffeeType.doces),
  CoffeeModel(
      id: "9",
      title: Strings.cubano,
      description: Strings.cubanoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_9,
      type: CoffeeType.especiais),
  CoffeeModel(
      id: "10",
      title: Strings.havaiano,
      description: Strings.havaianoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_10,
      type: CoffeeType.especiais),
  CoffeeModel(
      id: "11",
      title: Strings.arabe,
      description: Strings.arabe,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_11,
      type: CoffeeType.especiais),
  CoffeeModel(
      id: "12",
      title: Strings.irlandes,
      description: Strings.irlandesExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_12,
      type: CoffeeType.especiais),
];


List<CoffeeModel> tradicionais = [
  CoffeeModel(
      id: "1",
      title: Strings.expressoTradicional,
      description: Strings.expressoTradicionalExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_1,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "2",
      title: Strings.expressoAmericano,
      description: Strings.expressoAmericanoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_2,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "3",
      title: Strings.expressoCremoso,
      description: Strings.expressoCremosoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_3,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "4",
      title: Strings.latte,
      description: Strings.lattleExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_4,
      type: CoffeeType.tradicional),
  CoffeeModel(
      id: "5",
      title: Strings.expressoGelado,
      description: Strings.expressoGeladoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_5,
      type: CoffeeType.tradicional),
];

List<CoffeeModel> doce = [
  CoffeeModel(
      id: "6",
      title: Strings.capuccino,
      description: Strings.capuccinoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_6,
      type: CoffeeType.doces),
  CoffeeModel(
      id: "7",
      title: Strings.mocaccino,
      description: Strings.mocaccinoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_7,
      type: CoffeeType.doces),
  CoffeeModel(
      id: "8",
      title: Strings.chocolateQuente,
      description: Strings.chocolateQuenteExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_8,
      type: CoffeeType.doces),
];

List<CoffeeModel> especial = [
  CoffeeModel(
      id: "9",
      title: Strings.cubano,
      description: Strings.cubanoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_9,
      type: CoffeeType.especiais),
  CoffeeModel(
      id: "10",
      title: Strings.havaiano,
      description: Strings.havaianoExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_10,
      type: CoffeeType.especiais),
  CoffeeModel(
      id: "11",
      title: Strings.arabe,
      description: Strings.arabe,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_11,
      type: CoffeeType.especiais),
  CoffeeModel(
      id: "12",
      title: Strings.irlandes,
      description: Strings.irlandesExplain,
      price: double.parse(Strings.prise),
      assetImage: CustomImages.image_12,
      type: CoffeeType.especiais),
];
