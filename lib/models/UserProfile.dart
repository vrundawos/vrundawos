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

/** This is an auto generated class representing the UserProfile type in your schema. */
@immutable
class UserProfile extends Model {
  static const classType = _UserProfileModelType();
  final String id;
  final String guauHandle;
  final String email;
  final UserProfileStatus status;
  final List<Document> profilePicture;
  final List<Document> bannerPicture;
  final Salutation salutation;
  final String firstName;
  final String middleName;
  final String lastName;
  final Gender gender;
  final String displayName;
  final String about;
  final List<Address> address;
  final List<Order> orders;
  final String baseType;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const UserProfile._internal(
      {@required this.id,
      this.guauHandle,
      @required this.email,
      this.status,
      this.profilePicture,
      this.bannerPicture,
      @required this.salutation,
      @required this.firstName,
      this.middleName,
      @required this.lastName,
      @required this.gender,
      @required this.displayName,
      @required this.about,
      this.address,
      this.orders,
      @required this.baseType});

  factory UserProfile(
      {String id,
      String guauHandle,
      @required String email,
      UserProfileStatus status,
      List<Document> profilePicture,
      List<Document> bannerPicture,
      @required Salutation salutation,
      @required String firstName,
      String middleName,
      @required String lastName,
      @required Gender gender,
      @required String displayName,
      @required String about,
      List<Address> address,
      List<Order> orders,
      @required String baseType}) {
    return UserProfile._internal(
        id: id == null ? UUID.getUUID() : id,
        guauHandle: guauHandle,
        email: email,
        status: status,
        profilePicture: profilePicture != null ? List.unmodifiable(profilePicture) : profilePicture,
        bannerPicture: bannerPicture != null ? List.unmodifiable(bannerPicture) : bannerPicture,
        salutation: salutation,
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        gender: gender,
        displayName: displayName,
        about: about,
        address: address != null ? List.unmodifiable(address) : address,
        orders: orders != null ? List.unmodifiable(orders) : orders,
        baseType: baseType);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfile &&
        id == other.id &&
        guauHandle == other.guauHandle &&
        email == other.email &&
        status == other.status &&
        DeepCollectionEquality().equals(profilePicture, other.profilePicture) &&
        DeepCollectionEquality().equals(bannerPicture, other.bannerPicture) &&
        salutation == other.salutation &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        gender == other.gender &&
        displayName == other.displayName &&
        about == other.about &&
        DeepCollectionEquality().equals(address, other.address) &&
        DeepCollectionEquality().equals(orders, other.orders) &&
        baseType == other.baseType;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("UserProfile {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("email=" + "$email" + ", ");
    buffer.write("status=" + (status != null ? enumToString(status) : "null") + ", ");
    buffer.write("salutation=" + (salutation != null ? enumToString(salutation) : "null") + ", ");
    buffer.write("firstName=" + "$firstName" + ", ");
    buffer.write("middleName=" + "$middleName" + ", ");
    buffer.write("lastName=" + "$lastName" + ", ");
    buffer.write("gender=" + (gender != null ? enumToString(gender) : "null") + ", ");
    buffer.write("displayName=" + "$displayName" + ", ");
    buffer.write("about=" + "$about" + ", ");
    buffer.write("baseType=" + "$baseType");
    buffer.write("}");

    return buffer.toString();
  }

  UserProfile copyWith(
      {String id,
      String guauHandle,
      String email,
      UserProfileStatus status,
      List<Document> profilePicture,
      List<Document> bannerPicture,
      Salutation salutation,
      String firstName,
      String middleName,
      String lastName,
      Gender gender,
      String displayName,
      String about,
      List<Address> address,
      List<Order> orders,
      String baseType}) {
    return UserProfile(
        id: id ?? this.id,
        guauHandle: guauHandle ?? this.guauHandle,
        email: email ?? this.email,
        status: status ?? this.status,
        profilePicture: profilePicture ?? this.profilePicture,
        bannerPicture: bannerPicture ?? this.bannerPicture,
        salutation: salutation ?? this.salutation,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        gender: gender ?? this.gender,
        displayName: displayName ?? this.displayName,
        about: about ?? this.about,
        address: address ?? this.address,
        orders: orders ?? this.orders,
        baseType: baseType ?? this.baseType);
  }

  UserProfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        guauHandle = json['guauHandle'],
        email = json['email'],
        status = enumFromString<UserProfileStatus>(json['status'], UserProfileStatus.values),
        profilePicture =
            json['profilePicture'] is List ? (json['profilePicture'] as List).map((e) => Document.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        bannerPicture =
            json['bannerPicture'] is List ? (json['bannerPicture'] as List).map((e) => Document.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        salutation = enumFromString<Salutation>(json['salutation'], Salutation.values),
        firstName = json['firstName'],
        middleName = json['middleName'],
        lastName = json['lastName'],
        gender = enumFromString<Gender>(json['gender'], Gender.values),
        displayName = json['displayName'],
        about = json['about'],
        address = json['address'] is List ? (json['address'] as List).map((e) => Address.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        orders = json['orders'] is List ? (json['orders'] as List).map((e) => Order.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        baseType = json['baseType'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'guauHandle': guauHandle,
        'email': email,
        'status': enumToString(status),
        'profilePicture': profilePicture?.map((e) => e?.toJson())?.toList(),
        'bannerPicture': bannerPicture?.map((e) => e?.toJson())?.toList(),
        'salutation': enumToString(salutation),
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'gender': enumToString(gender),
        'displayName': displayName,
        'about': about,
        'address': address?.map((e) => e?.toJson())?.toList(),
        'orders': orders?.map((e) => e?.toJson())?.toList(),
        'baseType': baseType
      };

  static final QueryField ID = QueryField(fieldName: "userProfile.id");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField PROFILEPICTURE =
      QueryField(fieldName: "profilePicture", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Document).toString()));
  static final QueryField BANNERPICTURE =
      QueryField(fieldName: "bannerPicture", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Document).toString()));
  static final QueryField SALUTATION = QueryField(fieldName: "salutation");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField MIDDLENAME = QueryField(fieldName: "middleName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField GENDER = QueryField(fieldName: "gender");
  static final QueryField DISPLAYNAME = QueryField(fieldName: "displayName");
  static final QueryField ABOUT = QueryField(fieldName: "about");
  static final QueryField ADDRESS = QueryField(fieldName: "address", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Address).toString()));
  static final QueryField ORDERS = QueryField(fieldName: "orders", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserProfile";
    modelSchemaDefinition.pluralName = "UserProfiles";

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
        .addField(ModelFieldDefinition.field(key: UserProfile.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: UserProfile.EMAIL, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: UserProfile.STATUS, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: UserProfile.PROFILEPICTURE, isRequired: false, ofModelName: (Document).toString(), associatedKey: Document.GUAUHANDLE));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: UserProfile.BANNERPICTURE, isRequired: false, ofModelName: (Document).toString(), associatedKey: Document.GUAUHANDLE));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: UserProfile.SALUTATION, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: UserProfile.FIRSTNAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: UserProfile.MIDDLENAME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: UserProfile.LASTNAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: UserProfile.GENDER, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: UserProfile.DISPLAYNAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: UserProfile.ABOUT, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.hasMany(key: UserProfile.ADDRESS, isRequired: false, ofModelName: (Address).toString(), associatedKey: Address.GUAUHANDLE));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.hasMany(key: UserProfile.ORDERS, isRequired: false, ofModelName: (Order).toString(), associatedKey: Order.GUAUHANDLE));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: UserProfile.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _UserProfileModelType extends ModelType<UserProfile> {
  const _UserProfileModelType();

  @override
  UserProfile fromJson(Map<String, dynamic> jsonData) {
    return UserProfile.fromJson(jsonData);
  }
}
