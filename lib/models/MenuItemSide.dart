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

/** This is an auto generated class representing the MenuItemSide type in your schema. */
@immutable
class MenuItemSide extends Model {
  static const classType = _MenuItemSideModelType();
  final String id;
  final String guauHandle;
  final String baseMenuItemID;
  final MenuItem sideMenuItem;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const MenuItemSide._internal({@required this.id, this.guauHandle, @required this.baseMenuItemID, @required this.sideMenuItem});

  factory MenuItemSide({String id, String guauHandle, @required String baseMenuItemID, @required MenuItem sideMenuItem}) {
    return MenuItemSide._internal(id: id == null ? UUID.getUUID() : id, guauHandle: guauHandle, baseMenuItemID: baseMenuItemID, sideMenuItem: sideMenuItem);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItemSide &&
        id == other.id &&
        guauHandle == other.guauHandle &&
        baseMenuItemID == other.baseMenuItemID &&
        sideMenuItem == other.sideMenuItem;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("MenuItemSide {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("baseMenuItemID=" + "$baseMenuItemID" + ", ");
    buffer.write("sideMenuItem=" + (sideMenuItem != null ? sideMenuItem.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  MenuItemSide copyWith({String id, String guauHandle, String baseMenuItemID, MenuItem sideMenuItem}) {
    return MenuItemSide(
        id: id ?? this.id,
        guauHandle: guauHandle ?? this.guauHandle,
        baseMenuItemID: baseMenuItemID ?? this.baseMenuItemID,
        sideMenuItem: sideMenuItem ?? this.sideMenuItem);
  }

  MenuItemSide.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        guauHandle = json['guauHandle'],
        baseMenuItemID = json['baseMenuItemID'],
        sideMenuItem = json['sideMenuItem'] != null ? MenuItem.fromJson(Map<String, dynamic>.from(json['sideMenuItem'])) : null;

  Map<String, dynamic> toJson() => {'id': id, 'guauHandle': guauHandle, 'baseMenuItemID': baseMenuItemID, 'sideMenuItem': sideMenuItem?.toJson()};

  static final QueryField ID = QueryField(fieldName: "menuItemSide.id");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField BASEMENUITEMID = QueryField(fieldName: "baseMenuItemID");
  static final QueryField SIDEMENUITEM =
      QueryField(fieldName: "sideMenuItem", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuItem).toString()));
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "MenuItemSide";
    modelSchemaDefinition.pluralName = "MenuItemSides";

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

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: MenuItemSide.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: MenuItemSide.BASEMENUITEMID, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.belongsTo(key: MenuItemSide.SIDEMENUITEM, isRequired: true, targetName: "sideMenuItemID", ofModelName: (MenuItem).toString()));
  });
}

class _MenuItemSideModelType extends ModelType<MenuItemSide> {
  const _MenuItemSideModelType();

  @override
  MenuItemSide fromJson(Map<String, dynamic> jsonData) {
    return MenuItemSide.fromJson(jsonData);
  }
}
