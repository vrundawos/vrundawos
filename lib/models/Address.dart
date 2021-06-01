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

/** This is an auto generated class representing the Address type in your schema. */
@immutable
class Address extends Model {
  static const classType = _AddressModelType();
  final String id;
  final String addressLine1;
  final String addressLine2;
  final String street;
  final String suburb;
  final String city;
  final State state;
  final Country country;
  final String postCode;
  final String guauHandle;
  final String baseType;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Address._internal(
      {@required this.id,
      @required this.addressLine1,
      this.addressLine2,
      this.street,
      this.suburb,
      this.city,
      this.state,
      this.country,
      @required this.postCode,
      this.guauHandle,
      @required this.baseType});

  factory Address(
      {String id,
      @required String addressLine1,
      String addressLine2,
      String street,
      String suburb,
      String city,
      State state,
      Country country,
      @required String postCode,
      String guauHandle,
      @required String baseType}) {
    return Address._internal(
        id: id == null ? UUID.getUUID() : id,
        addressLine1: addressLine1,
        addressLine2: addressLine2,
        street: street,
        suburb: suburb,
        city: city,
        state: state,
        country: country,
        postCode: postCode,
        guauHandle: guauHandle,
        baseType: baseType);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        id == other.id &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        street == other.street &&
        suburb == other.suburb &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        postCode == other.postCode &&
        guauHandle == other.guauHandle &&
        baseType == other.baseType;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Address {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("addressLine1=" + "$addressLine1" + ", ");
    buffer.write("addressLine2=" + "$addressLine2" + ", ");
    buffer.write("street=" + "$street" + ", ");
    buffer.write("suburb=" + "$suburb" + ", ");
    buffer.write("city=" + "$city" + ", ");
    buffer.write("state=" + (state != null ? enumToString(state) : "null") + ", ");
    buffer.write("country=" + (country != null ? enumToString(country) : "null") + ", ");
    buffer.write("postCode=" + "$postCode" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("baseType=" + "$baseType");
    buffer.write("}");

    return buffer.toString();
  }

  Address copyWith(
      {String id,
      String addressLine1,
      String addressLine2,
      String street,
      String suburb,
      String city,
      State state,
      Country country,
      String postCode,
      String guauHandle,
      String baseType}) {
    return Address(
        id: id ?? this.id,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        street: street ?? this.street,
        suburb: suburb ?? this.suburb,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        postCode: postCode ?? this.postCode,
        guauHandle: guauHandle ?? this.guauHandle,
        baseType: baseType ?? this.baseType);
  }

  Address.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        addressLine1 = json['addressLine1'],
        addressLine2 = json['addressLine2'],
        street = json['street'],
        suburb = json['suburb'],
        city = json['city'],
        state = enumFromString<State>(json['state'], State.values),
        country = enumFromString<Country>(json['country'], Country.values),
        postCode = json['postCode'],
        guauHandle = json['guauHandle'],
        baseType = json['baseType'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'addressLine1': addressLine1,
        'addressLine2': addressLine2,
        'street': street,
        'suburb': suburb,
        'city': city,
        'state': enumToString(state),
        'country': enumToString(country),
        'postCode': postCode,
        'guauHandle': guauHandle,
        'baseType': baseType
      };

  static final QueryField ID = QueryField(fieldName: "address.id");
  static final QueryField ADDRESSLINE1 = QueryField(fieldName: "addressLine1");
  static final QueryField ADDRESSLINE2 = QueryField(fieldName: "addressLine2");
  static final QueryField STREET = QueryField(fieldName: "street");
  static final QueryField SUBURB = QueryField(fieldName: "suburb");
  static final QueryField CITY = QueryField(fieldName: "city");
  static final QueryField STATE = QueryField(fieldName: "state");
  static final QueryField COUNTRY = QueryField(fieldName: "country");
  static final QueryField POSTCODE = QueryField(fieldName: "postCode");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "Address";
    modelSchemaDefinition.pluralName = "Addresses";

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

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.ADDRESSLINE1, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.ADDRESSLINE2, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.STREET, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.SUBURB, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.CITY, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.STATE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.COUNTRY, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.POSTCODE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: Address.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _AddressModelType extends ModelType<Address> {
  const _AddressModelType();

  @override
  Address fromJson(Map<String, dynamic> jsonData) {
    return Address.fromJson(jsonData);
  }
}
