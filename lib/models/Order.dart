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

/** This is an auto generated class representing the Order type in your schema. */
@immutable
class Order extends Model {
  static const classType = _OrderModelType();
  final String id;
  final String guauHandle;
  final String chefGuauHandle;
  final double totalAmount;
  final String status;
  final UserProfile userProfile;
  final ChefProfile chefProfile;
  final List<MenuItemOrder> menuItems;
  final String baseType;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Order._internal(
      {@required this.id,
      this.guauHandle,
      this.chefGuauHandle,
      @required this.totalAmount,
      this.status,
      this.userProfile,
      this.chefProfile,
      this.menuItems,
      @required this.baseType});

  factory Order(
      {String id,
      String guauHandle,
      String chefGuauHandle,
      @required double totalAmount,
      String status,
      UserProfile userProfile,
      ChefProfile chefProfile,
      List<MenuItemOrder> menuItems,
      @required String baseType}) {
    return Order._internal(
        id: id == null ? UUID.getUUID() : id,
        guauHandle: guauHandle,
        chefGuauHandle: chefGuauHandle,
        totalAmount: totalAmount,
        status: status,
        userProfile: userProfile,
        chefProfile: chefProfile,
        menuItems: menuItems != null ? List.unmodifiable(menuItems) : menuItems,
        baseType: baseType);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        guauHandle == other.guauHandle &&
        chefGuauHandle == other.chefGuauHandle &&
        totalAmount == other.totalAmount &&
        status == other.status &&
        userProfile == other.userProfile &&
        chefProfile == other.chefProfile &&
        DeepCollectionEquality().equals(menuItems, other.menuItems) &&
        baseType == other.baseType;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Order {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("chefGuauHandle=" + "$chefGuauHandle" + ", ");
    buffer.write("totalAmount=" + (totalAmount != null ? totalAmount.toString() : "null") + ", ");
    buffer.write("status=" + "$status" + ", ");
    buffer.write("userProfile=" + (userProfile != null ? userProfile.toString() : "null") + ", ");
    buffer.write("chefProfile=" + (chefProfile != null ? chefProfile.toString() : "null") + ", ");
    buffer.write("baseType=" + "$baseType");
    buffer.write("}");

    return buffer.toString();
  }

  Order copyWith(
      {String id,
      String guauHandle,
      String chefGuauHandle,
      double totalAmount,
      String status,
      UserProfile userProfile,
      ChefProfile chefProfile,
      List<MenuItemOrder> menuItems,
      String baseType}) {
    return Order(
        id: id ?? this.id,
        guauHandle: guauHandle ?? this.guauHandle,
        chefGuauHandle: chefGuauHandle ?? this.chefGuauHandle,
        totalAmount: totalAmount ?? this.totalAmount,
        status: status ?? this.status,
        userProfile: userProfile ?? this.userProfile,
        chefProfile: chefProfile ?? this.chefProfile,
        menuItems: menuItems ?? this.menuItems,
        baseType: baseType ?? this.baseType);
  }

  Order.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        guauHandle = json['guauHandle'],
        chefGuauHandle = json['chefGuauHandle'],
        totalAmount = json['totalAmount'],
        status = json['status'],
        userProfile = json['userProfile'] != null ? UserProfile.fromJson(Map<String, dynamic>.from(json['userProfile'])) : null,
        chefProfile = json['chefProfile'] != null ? ChefProfile.fromJson(Map<String, dynamic>.from(json['chefProfile'])) : null,
        menuItems = json['menuItems'] is List ? (json['menuItems'] as List).map((e) => MenuItemOrder.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        baseType = json['baseType'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'guauHandle': guauHandle,
        'chefGuauHandle': chefGuauHandle,
        'totalAmount': totalAmount,
        'status': status,
        'userProfile': userProfile?.toJson(),
        'chefProfile': chefProfile?.toJson(),
        'menuItems': menuItems?.map((e) => e?.toJson())?.toList(),
        'baseType': baseType
      };

  static final QueryField ID = QueryField(fieldName: "order.id");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField CHEFGUAUHANDLE = QueryField(fieldName: "chefGuauHandle");
  static final QueryField TOTALAMOUNT = QueryField(fieldName: "totalAmount");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField USERPROFILE =
      QueryField(fieldName: "userProfile", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserProfile).toString()));
  static final QueryField CHEFPROFILE =
      QueryField(fieldName: "chefProfile", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ChefProfile).toString()));
  static final QueryField MENUITEMS =
      QueryField(fieldName: "menuItems", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuItemOrder).toString()));
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "Order";
    modelSchemaDefinition.pluralName = "Orders";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "chefGuauHandle",
          identityClaim: "cognito:username",
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ]),
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "guauHandle",
          identityClaim: "cognito:username",
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ]),
      AuthRule(
          authStrategy: AuthStrategy.GROUPS,
          groupClaim: "cognito:groups",
          groups: ["Admins"],
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Order.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Order.CHEFGUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Order.TOTALAMOUNT, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Order.STATUS, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.belongsTo(key: Order.USERPROFILE, isRequired: false, targetName: "orderUserProfileId", ofModelName: (UserProfile).toString()));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.belongsTo(key: Order.CHEFPROFILE, isRequired: false, targetName: "orderChefProfileId", ofModelName: (ChefProfile).toString()));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.hasMany(key: Order.MENUITEMS, isRequired: false, ofModelName: (MenuItemOrder).toString(), associatedKey: MenuItemOrder.ORDERID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Order.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _OrderModelType extends ModelType<Order> {
  const _OrderModelType();

  @override
  Order fromJson(Map<String, dynamic> jsonData) {
    return Order.fromJson(jsonData);
  }
}
