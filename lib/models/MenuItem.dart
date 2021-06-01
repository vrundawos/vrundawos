/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';

/** This is an auto generated class representing the MenuItem type in your schema. */
@immutable
class MenuItem extends Model {
  static const classType = _MenuItemModelType();
  final String id;
  final String name;
  final String description;
  final List<Document> images;
  final double price;
  final Cuisine cuisine;
  final List<DietaryOfferings> allergyInfo;
  final String isAvailable;
  final int maxPerOrder;
  final int maxPerDay;
  final String guauHandle;
  final IsSide isSide;
  final String baseType;
  final List<MenuItemSide> sides;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const MenuItem._internal(
      {@required this.id,
      @required this.name,
      @required this.description,
      this.images,
      @required this.price,
      @required this.cuisine,
      @required this.allergyInfo,
      @required this.isAvailable,
      @required this.maxPerOrder,
      @required this.maxPerDay,
      this.guauHandle,
      @required this.isSide,
      @required this.baseType,
      this.sides});

  factory MenuItem(
      {String id,
      @required String name,
      @required String description,
      List<Document> images,
      @required double price,
      @required Cuisine cuisine,
      @required List<DietaryOfferings> allergyInfo,
      @required String isAvailable,
      @required int maxPerOrder,
      @required int maxPerDay,
      String guauHandle,
      @required IsSide isSide,
      @required String baseType,
      List<MenuItemSide> sides}) {
    return MenuItem._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        description: description,
        images: images != null ? List.unmodifiable(images) : images,
        price: price,
        cuisine: cuisine,
        allergyInfo: allergyInfo != null ? List.unmodifiable(allergyInfo) : allergyInfo,
        isAvailable: isAvailable,
        maxPerOrder: maxPerOrder,
        maxPerDay: maxPerDay,
        guauHandle: guauHandle,
        isSide: isSide,
        baseType: baseType,
        sides: sides != null ? List.unmodifiable(sides) : sides);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItem &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        DeepCollectionEquality().equals(images, other.images) &&
        price == other.price &&
        cuisine == other.cuisine &&
        DeepCollectionEquality().equals(allergyInfo, other.allergyInfo) &&
        isAvailable == other.isAvailable &&
        maxPerOrder == other.maxPerOrder &&
        maxPerDay == other.maxPerDay &&
        guauHandle == other.guauHandle &&
        isSide == other.isSide &&
        baseType == other.baseType &&
        DeepCollectionEquality().equals(sides, other.sides);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("MenuItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$name" + ", ");
    buffer.write("description=" + "$description" + ", ");
    buffer.write("price=" + (price != null ? price.toString() : "null") + ", ");
    buffer.write("cuisine=" + (cuisine != null ? enumToString(cuisine) : "null") + ", ");
    buffer.write("allergyInfo=" + allergyInfo?.map((e) => enumToString(e)).toString() + ", ");
    buffer.write("isAvailable=" + "$isAvailable" + ", ");
    buffer.write("maxPerOrder=" + (maxPerOrder != null ? maxPerOrder.toString() : "null") + ", ");
    buffer.write("maxPerDay=" + (maxPerDay != null ? maxPerDay.toString() : "null") + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("isSide=" + (isSide != null ? enumToString(isSide) : "null") + ", ");
    buffer.write("baseType=" + "$baseType");
    buffer.write("}");

    return buffer.toString();
  }

  MenuItem copyWith(
      {String id,
      String name,
      String description,
      List<Document> images,
      double price,
      Cuisine cuisine,
      List<DietaryOfferings> allergyInfo,
      String isAvailable,
      int maxPerOrder,
      int maxPerDay,
      String guauHandle,
      IsSide isSide,
      String baseType,
      List<MenuItemSide> sides}) {
    return MenuItem(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        images: images ?? this.images,
        price: price ?? this.price,
        cuisine: cuisine ?? this.cuisine,
        allergyInfo: allergyInfo ?? this.allergyInfo,
        isAvailable: isAvailable ?? this.isAvailable,
        maxPerOrder: maxPerOrder ?? this.maxPerOrder,
        maxPerDay: maxPerDay ?? this.maxPerDay,
        guauHandle: guauHandle ?? this.guauHandle,
        isSide: isSide ?? this.isSide,
        baseType: baseType ?? this.baseType,
        sides: sides ?? this.sides);
  }

  MenuItem.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        images = json['images'] is List ? (json['images'] as List).map((e) => Document.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        price = json['price'],
        cuisine = enumFromString<Cuisine>(json['cuisine'], Cuisine.values),
        allergyInfo = json['allergyInfo'] is List
            ? (json['allergyInfo'] as List).map((e) => enumFromString<DietaryOfferings>(e, DietaryOfferings.values)).toList()
            : null,
        isAvailable = json['isAvailable'],
        maxPerOrder = json['maxPerOrder'],
        maxPerDay = json['maxPerDay'],
        guauHandle = json['guauHandle'],
        isSide = enumFromString<IsSide>(json['isSide'], IsSide.values),
        baseType = json['baseType'],
        sides = json['sides'] is List ? (json['sides'] as List).map((e) => MenuItemSide.fromJson(Map<String, dynamic>.from(e))).toList() : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'images': images?.map((e) => e?.toJson())?.toList(),
        'price': price,
        'cuisine': enumToString(cuisine),
        'allergyInfo': allergyInfo?.map((e) => enumToString(e))?.toList(),
        'isAvailable': isAvailable,
        'maxPerOrder': maxPerOrder,
        'maxPerDay': maxPerDay,
        'guauHandle': guauHandle,
        'isSide': enumToString(isSide),
        'baseType': baseType,
        'sides': sides?.map((e) => e?.toJson())?.toList()
      };

  static final QueryField ID = QueryField(fieldName: "menuItem.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField IMAGES = QueryField(fieldName: "images", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Document).toString()));
  static final QueryField PRICE = QueryField(fieldName: "price");
  static final QueryField CUISINE = QueryField(fieldName: "cuisine");
  static final QueryField ALLERGYINFO = QueryField(fieldName: "allergyInfo");
  static final QueryField ISAVAILABLE = QueryField(fieldName: "isAvailable");
  static final QueryField MAXPERORDER = QueryField(fieldName: "maxPerOrder");
  static final QueryField MAXPERDAY = QueryField(fieldName: "maxPerDay");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField ISSIDE = QueryField(fieldName: "isSide");
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static final QueryField SIDES = QueryField(fieldName: "sides", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuItemSide).toString()));
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "MenuItem";
    modelSchemaDefinition.pluralName = "MenuItems";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "guauHandle",
          identityClaim: "cognito:username",
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ]),
      AuthRule(
          authStrategy: AuthStrategy.GROUPS,
          groupClaim: "cognito:groups",
          groups: ["Admins"],
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ]),
      AuthRule(authStrategy: AuthStrategy.PRIVATE, operations: [ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.NAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.DESCRIPTION, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.hasMany(key: MenuItem.IMAGES, isRequired: false, ofModelName: (Document).toString(), associatedKey: Document.PARENTID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.PRICE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.CUISINE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: MenuItem.ALLERGYINFO,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.ISAVAILABLE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.MAXPERORDER, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.MAXPERDAY, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.ISSIDE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItem.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: MenuItem.SIDES, isRequired: false, ofModelName: (MenuItemSide).toString(), associatedKey: MenuItemSide.BASEMENUITEMID));
  });
}

class _MenuItemModelType extends ModelType<MenuItem> {
  const _MenuItemModelType();

  @override
  MenuItem fromJson(Map<String, dynamic> jsonData) {
    return MenuItem.fromJson(jsonData);
  }
}
