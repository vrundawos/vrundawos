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

/** This is an auto generated class representing the Document type in your schema. */
@immutable
class Document extends Model {
  static const classType = _DocumentModelType();
  final String id;
  final String parentID;
  final String parentBaseType;
  final String guauHandle;
  final String name;
  final String type;
  final Visibility visibility;
  final String isCurrent;
  final DocumentStatus status;
  final String key;
  final String baseType;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Document._internal(
      {@required this.id,
      @required this.parentID,
      @required this.parentBaseType,
      this.guauHandle,
      @required this.name,
      @required this.type,
      this.visibility,
      this.isCurrent,
      this.status,
      @required this.key,
      @required this.baseType});

  factory Document(
      {String id,
      @required String parentID,
      @required String parentBaseType,
      String guauHandle,
      @required String name,
      @required String type,
      Visibility visibility,
      String isCurrent,
      DocumentStatus status,
      @required String key,
      @required String baseType}) {
    return Document._internal(
        id: id == null ? UUID.getUUID() : id,
        parentID: parentID,
        parentBaseType: parentBaseType,
        guauHandle: guauHandle,
        name: name,
        type: type,
        visibility: visibility,
        isCurrent: isCurrent,
        status: status,
        key: key,
        baseType: baseType);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Document &&
        id == other.id &&
        parentID == other.parentID &&
        parentBaseType == other.parentBaseType &&
        guauHandle == other.guauHandle &&
        name == other.name &&
        type == other.type &&
        visibility == other.visibility &&
        isCurrent == other.isCurrent &&
        status == other.status &&
        key == other.key &&
        baseType == other.baseType;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Document {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("parentID=" + "$parentID" + ", ");
    buffer.write("parentBaseType=" + "$parentBaseType" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("name=" + "$name" + ", ");
    buffer.write("type=" + "$type" + ", ");
    buffer.write("visibility=" + (visibility != null ? enumToString(visibility) : "null") + ", ");
    buffer.write("isCurrent=" + "$isCurrent" + ", ");
    buffer.write("status=" + (status != null ? enumToString(status) : "null") + ", ");
    buffer.write("key=" + "$key" + ", ");
    buffer.write("baseType=" + "$baseType");
    buffer.write("}");

    return buffer.toString();
  }

  Document copyWith(
      {String id,
      String parentID,
      String parentBaseType,
      String guauHandle,
      String name,
      String type,
      Visibility visibility,
      String isCurrent,
      DocumentStatus status,
      String key,
      String baseType}) {
    return Document(
        id: id ?? this.id,
        parentID: parentID ?? this.parentID,
        parentBaseType: parentBaseType ?? this.parentBaseType,
        guauHandle: guauHandle ?? this.guauHandle,
        name: name ?? this.name,
        type: type ?? this.type,
        visibility: visibility ?? this.visibility,
        isCurrent: isCurrent ?? this.isCurrent,
        status: status ?? this.status,
        key: key ?? this.key,
        baseType: baseType ?? this.baseType);
  }

  Document.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        parentID = json['parentID'],
        parentBaseType = json['parentBaseType'],
        guauHandle = json['guauHandle'],
        name = json['name'],
        type = json['type'],
        visibility = enumFromString<Visibility>(json['visibility'], Visibility.values),
        isCurrent = json['isCurrent'],
        status = enumFromString<DocumentStatus>(json['status'], DocumentStatus.values),
        key = json['key'],
        baseType = json['baseType'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'parentID': parentID,
        'parentBaseType': parentBaseType,
        'guauHandle': guauHandle,
        'name': name,
        'type': type,
        'visibility': enumToString(visibility),
        'isCurrent': isCurrent,
        'status': enumToString(status),
        'key': key,
        'baseType': baseType
      };

  static final QueryField ID = QueryField(fieldName: "document.id");
  static final QueryField PARENTID = QueryField(fieldName: "parentID");
  static final QueryField PARENTBASETYPE = QueryField(fieldName: "parentBaseType");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField VISIBILITY = QueryField(fieldName: "visibility");
  static final QueryField ISCURRENT = QueryField(fieldName: "isCurrent");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField KEY = QueryField(fieldName: "key");
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "Document";
    modelSchemaDefinition.pluralName = "Documents";

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

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.PARENTID, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: Document.PARENTBASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.NAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.TYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: Document.VISIBILITY, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.ISCURRENT, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.STATUS, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.KEY, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Document.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _DocumentModelType extends ModelType<Document> {
  const _DocumentModelType();

  @override
  Document fromJson(Map<String, dynamic> jsonData) {
    return Document.fromJson(jsonData);
  }
}
