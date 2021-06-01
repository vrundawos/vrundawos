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
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';

/** This is an auto generated class representing the MenuItemOrder type in your schema. */
@immutable
class MenuItemOrder extends Model {
  static const classType = _MenuItemOrderModelType();
  final String id;
  final String guauHandle;
  final String chefGuauHandle;
  final String menuItemSideID;
  final String orderID;
  final MenuItem menuItem;
  final MenuItemSide menuItemSide;
  final String baseType;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const MenuItemOrder._internal(
      {@required this.id,
      this.guauHandle,
      this.chefGuauHandle,
      this.menuItemSideID,
      @required this.orderID,
      this.menuItem,
      this.menuItemSide,
      @required this.baseType});

  factory MenuItemOrder(
      {String id,
      String guauHandle,
      String chefGuauHandle,
      String menuItemSideID,
      @required String orderID,
      MenuItem menuItem,
      MenuItemSide menuItemSide,
      @required String baseType}) {
    return MenuItemOrder._internal(
        id: id == null ? UUID.getUUID() : id,
        guauHandle: guauHandle,
        chefGuauHandle: chefGuauHandle,
        menuItemSideID: menuItemSideID,
        orderID: orderID,
        menuItem: menuItem,
        menuItemSide: menuItemSide,
        baseType: baseType);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItemOrder &&
        id == other.id &&
        guauHandle == other.guauHandle &&
        chefGuauHandle == other.chefGuauHandle &&
        menuItemSideID == other.menuItemSideID &&
        orderID == other.orderID &&
        menuItem == other.menuItem &&
        menuItemSide == other.menuItemSide &&
        baseType == other.baseType;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("MenuItemOrder {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("chefGuauHandle=" + "$chefGuauHandle" + ", ");
    buffer.write("menuItemSideID=" + "$menuItemSideID" + ", ");
    buffer.write("orderID=" + "$orderID" + ", ");
    buffer.write("menuItem=" + (menuItem != null ? menuItem.toString() : "null") + ", ");
    buffer.write("baseType=" + "$baseType");
    buffer.write("}");

    return buffer.toString();
  }

  MenuItemOrder copyWith(
      {String id,
      String guauHandle,
      String chefGuauHandle,
      String menuItemSideID,
      String orderID,
      MenuItem menuItem,
      MenuItemSide menuItemSide,
      String baseType}) {
    return MenuItemOrder(
        id: id ?? this.id,
        guauHandle: guauHandle ?? this.guauHandle,
        chefGuauHandle: chefGuauHandle ?? this.chefGuauHandle,
        menuItemSideID: menuItemSideID ?? this.menuItemSideID,
        orderID: orderID ?? this.orderID,
        menuItem: menuItem ?? this.menuItem,
        menuItemSide: menuItemSide ?? this.menuItemSide,
        baseType: baseType ?? this.baseType);
  }

  MenuItemOrder.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        guauHandle = json['guauHandle'],
        chefGuauHandle = json['chefGuauHandle'],
        menuItemSideID = json['menuItemSideID'],
        orderID = json['orderID'],
        menuItem = json['menuItem'] != null ? MenuItem.fromJson(Map<String, dynamic>.from(json['menuItem'])) : null,
        menuItemSide = json['menuItemSide'] != null ? MenuItemSide.fromJson(Map<String, dynamic>.from(json['menuItemSide'])) : null,
        baseType = json['baseType'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'guauHandle': guauHandle,
        'chefGuauHandle': chefGuauHandle,
        'menuItemSideID': menuItemSideID,
        'orderID': orderID,
        'menuItem': menuItem?.toJson(),
        'menuItemSide': menuItemSide?.toJson(),
        'baseType': baseType
      };

  static final QueryField ID = QueryField(fieldName: "menuItemOrder.id");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField CHEFGUAUHANDLE = QueryField(fieldName: "chefGuauHandle");
  static final QueryField MENUITEMSIDEID = QueryField(fieldName: "menuItemSideID");
  static final QueryField ORDERID = QueryField(fieldName: "orderID");
  static final QueryField MENUITEM = QueryField(fieldName: "menuItem", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuItem).toString()));
  static final QueryField MENUITEMSIDE =
      QueryField(fieldName: "menuItemSide", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuItemSide).toString()));
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "MenuItemOrder";
    modelSchemaDefinition.pluralName = "MenuItemOrders";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "guauHandle",
          identityClaim: "cognito:username",
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ]),
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "chefGuauHandle",
          identityClaim: "cognito:username",
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ]),
      AuthRule(
          authStrategy: AuthStrategy.GROUPS,
          groupClaim: "cognito:groups",
          groups: ["Admins"],
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: MenuItemOrder.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: MenuItemOrder.CHEFGUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: MenuItemOrder.MENUITEMSIDEID, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: MenuItemOrder.ORDERID, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.belongsTo(key: MenuItemOrder.MENUITEM, isRequired: false, targetName: "menuItemID", ofModelName: (MenuItem).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: MenuItemOrder.MENUITEMSIDE, isRequired: false, ofModelName: (MenuItemSide).toString(), associatedKey: MenuItemSide.ID));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: MenuItemOrder.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _MenuItemOrderModelType extends ModelType<MenuItemOrder> {
  const _MenuItemOrderModelType();

  @override
  MenuItemOrder fromJson(Map<String, dynamic> jsonData) {
    return MenuItemOrder.fromJson(jsonData);
  }
}
