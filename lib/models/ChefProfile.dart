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

/** This is an auto generated class representing the ChefProfile type in your schema. */
@immutable
class ChefProfile extends Model {
  static const classType = _ChefProfileModelType();
  final String id;
  final String guauHandle;
  final String email;
  final Salutation salutation;
  final String firstName;
  final String middleName;
  final String lastName;
  final Gender gender;
  final String displayName;
  final String about;
  final List<Address> address;
  final String originCountry;
  final List<Document> profilePicture;
  final List<Document> bannerPicture;
  final List<DietaryOfferings> dietaryOfferings;
  final int yearsOfExperience;
  final List<String> cuisines;
  final List<Document> verificationDocuments;
  final List<MenuItem> menuItems;
  final ChefProfileStatus status;
  final String birthDate;
  final String baseType;
  final int minOrderTimeInMinutes;
  final String openingHours;
  final List<Order> orders;
  final double commissionPercentage;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const ChefProfile._internal(
      {@required this.id,
      this.guauHandle,
      @required this.email,
      @required this.salutation,
      @required this.firstName,
      this.middleName,
      @required this.lastName,
      @required this.gender,
      @required this.displayName,
      @required this.about,
      this.address,
      @required this.originCountry,
      this.profilePicture,
      this.bannerPicture,
      @required this.dietaryOfferings,
      @required this.yearsOfExperience,
      @required this.cuisines,
      this.verificationDocuments,
      this.menuItems,
      this.status,
      @required this.birthDate,
      @required this.baseType,
      this.minOrderTimeInMinutes,
      this.openingHours,
      this.orders,
      this.commissionPercentage});

  factory ChefProfile(
      {String id,
      String guauHandle,
      @required String email,
      @required Salutation salutation,
      @required String firstName,
      String middleName,
      @required String lastName,
      @required Gender gender,
      @required String displayName,
      @required String about,
      List<Address> address,
      @required String originCountry,
      List<Document> profilePicture,
      List<Document> bannerPicture,
      @required List<DietaryOfferings> dietaryOfferings,
      @required int yearsOfExperience,
      @required List<String> cuisines,
      List<Document> verificationDocuments,
      List<MenuItem> menuItems,
      ChefProfileStatus status,
      @required String birthDate,
      @required String baseType,
      int minOrderTimeInMinutes,
      String openingHours,
      List<Order> orders,
      double commissionPercentage}) {
    return ChefProfile._internal(
        id: id == null ? UUID.getUUID() : id,
        guauHandle: guauHandle,
        email: email,
        salutation: salutation,
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        gender: gender,
        displayName: displayName,
        about: about,
        address: address != null ? List.unmodifiable(address) : address,
        originCountry: originCountry,
        profilePicture: profilePicture != null ? List.unmodifiable(profilePicture) : profilePicture,
        bannerPicture: bannerPicture != null ? List.unmodifiable(bannerPicture) : bannerPicture,
        dietaryOfferings: dietaryOfferings != null ? List.unmodifiable(dietaryOfferings) : dietaryOfferings,
        yearsOfExperience: yearsOfExperience,
        cuisines: cuisines != null ? List.unmodifiable(cuisines) : cuisines,
        verificationDocuments: verificationDocuments != null ? List.unmodifiable(verificationDocuments) : verificationDocuments,
        menuItems: menuItems != null ? List.unmodifiable(menuItems) : menuItems,
        status: status,
        birthDate: birthDate,
        baseType: baseType,
        minOrderTimeInMinutes: minOrderTimeInMinutes,
        openingHours: openingHours,
        orders: orders != null ? List.unmodifiable(orders) : orders,
        commissionPercentage: commissionPercentage);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChefProfile &&
        id == other.id &&
        guauHandle == other.guauHandle &&
        email == other.email &&
        salutation == other.salutation &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        gender == other.gender &&
        displayName == other.displayName &&
        about == other.about &&
        DeepCollectionEquality().equals(address, other.address) &&
        originCountry == other.originCountry &&
        DeepCollectionEquality().equals(profilePicture, other.profilePicture) &&
        DeepCollectionEquality().equals(bannerPicture, other.bannerPicture) &&
        DeepCollectionEquality().equals(dietaryOfferings, other.dietaryOfferings) &&
        yearsOfExperience == other.yearsOfExperience &&
        DeepCollectionEquality().equals(cuisines, other.cuisines) &&
        DeepCollectionEquality().equals(verificationDocuments, other.verificationDocuments) &&
        DeepCollectionEquality().equals(menuItems, other.menuItems) &&
        status == other.status &&
        birthDate == other.birthDate &&
        baseType == other.baseType &&
        minOrderTimeInMinutes == other.minOrderTimeInMinutes &&
        openingHours == other.openingHours &&
        DeepCollectionEquality().equals(orders, other.orders) &&
        commissionPercentage == other.commissionPercentage;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ChefProfile {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("guauHandle=" + "$guauHandle" + ", ");
    buffer.write("email=" + "$email" + ", ");
    buffer.write("salutation=" + (salutation != null ? enumToString(salutation) : "null") + ", ");
    buffer.write("firstName=" + "$firstName" + ", ");
    buffer.write("middleName=" + "$middleName" + ", ");
    buffer.write("lastName=" + "$lastName" + ", ");
    buffer.write("gender=" + (gender != null ? enumToString(gender) : "null") + ", ");
    buffer.write("displayName=" + "$displayName" + ", ");
    buffer.write("about=" + "$about" + ", ");
    buffer.write("originCountry=" + "$originCountry" + ", ");
    buffer.write("dietaryOfferings=" + dietaryOfferings?.map((e) => enumToString(e)).toString() + ", ");
    buffer.write("yearsOfExperience=" + (yearsOfExperience != null ? yearsOfExperience.toString() : "null") + ", ");
    buffer.write("cuisines=" + (cuisines != null ? cuisines.toString() : "null") + ", ");
    buffer.write("status=" + (status != null ? enumToString(status) : "null") + ", ");
    buffer.write("birthDate=" + "$birthDate" + ", ");
    buffer.write("baseType=" + "$baseType" + ", ");
    buffer.write("minOrderTimeInMinutes=" + (minOrderTimeInMinutes != null ? minOrderTimeInMinutes.toString() : "null") + ", ");
    buffer.write("openingHours=" + "$openingHours" + ", ");
    buffer.write("commissionPercentage=" + (commissionPercentage != null ? commissionPercentage.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ChefProfile copyWith(
      {String id,
      String guauHandle,
      String email,
      Salutation salutation,
      String firstName,
      String middleName,
      String lastName,
      Gender gender,
      String displayName,
      String about,
      List<Address> address,
      String originCountry,
      List<Document> profilePicture,
      List<Document> bannerPicture,
      List<DietaryOfferings> dietaryOfferings,
      int yearsOfExperience,
      List<String> cuisines,
      List<Document> verificationDocuments,
      List<MenuItem> menuItems,
      ChefProfileStatus status,
      String birthDate,
      String baseType,
      int minOrderTimeInMinutes,
      String openingHours,
      List<Order> orders,
      double commissionPercentage}) {
    return ChefProfile(
        id: id ?? this.id,
        guauHandle: guauHandle ?? this.guauHandle,
        email: email ?? this.email,
        salutation: salutation ?? this.salutation,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        gender: gender ?? this.gender,
        displayName: displayName ?? this.displayName,
        about: about ?? this.about,
        address: address ?? this.address,
        originCountry: originCountry ?? this.originCountry,
        profilePicture: profilePicture ?? this.profilePicture,
        bannerPicture: bannerPicture ?? this.bannerPicture,
        dietaryOfferings: dietaryOfferings ?? this.dietaryOfferings,
        yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
        cuisines: cuisines ?? this.cuisines,
        verificationDocuments: verificationDocuments ?? this.verificationDocuments,
        menuItems: menuItems ?? this.menuItems,
        status: status ?? this.status,
        birthDate: birthDate ?? this.birthDate,
        baseType: baseType ?? this.baseType,
        minOrderTimeInMinutes: minOrderTimeInMinutes ?? this.minOrderTimeInMinutes,
        openingHours: openingHours ?? this.openingHours,
        orders: orders ?? this.orders,
        commissionPercentage: commissionPercentage ?? this.commissionPercentage);
  }

  ChefProfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        guauHandle = json['guauHandle'],
        email = json['email'],
        salutation = enumFromString<Salutation>(json['salutation'], Salutation.values),
        firstName = json['firstName'],
        middleName = json['middleName'],
        lastName = json['lastName'],
        gender = enumFromString<Gender>(json['gender'], Gender.values),
        displayName = json['displayName'],
        about = json['about'],
        address = json['address'] is List ? (json['address'] as List).map((e) => Address.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        originCountry = json['originCountry'],
        profilePicture =
            json['profilePicture'] is List ? (json['profilePicture'] as List).map((e) => Document.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        bannerPicture =
            json['bannerPicture'] is List ? (json['bannerPicture'] as List).map((e) => Document.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        dietaryOfferings = json['dietaryOfferings'] is List
            ? (json['dietaryOfferings'] as List).map((e) => enumFromString<DietaryOfferings>(e, DietaryOfferings.values)).toList()
            : null,
        yearsOfExperience = json['yearsOfExperience'],
        cuisines = json['cuisines']?.cast<String>(),
        verificationDocuments = json['verificationDocuments'] is List
            ? (json['verificationDocuments'] as List).map((e) => Document.fromJson(Map<String, dynamic>.from(e))).toList()
            : null,
        menuItems = json['menuItems'] is List ? (json['menuItems'] as List).map((e) => MenuItem.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        status = enumFromString<ChefProfileStatus>(json['status'], ChefProfileStatus.values),
        birthDate = json['birthDate'],
        baseType = json['baseType'],
        minOrderTimeInMinutes = json['minOrderTimeInMinutes'],
        openingHours = json['openingHours'],
        orders = json['orders'] is List ? (json['orders'] as List).map((e) => Order.fromJson(Map<String, dynamic>.from(e))).toList() : null,
        commissionPercentage = json['commissionPercentage'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'guauHandle': guauHandle,
        'email': email,
        'salutation': enumToString(salutation),
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'gender': enumToString(gender),
        'displayName': displayName,
        'about': about,
        'address': address?.map((e) => e?.toJson())?.toList(),
        'originCountry': originCountry,
        'profilePicture': profilePicture?.map((e) => e?.toJson())?.toList(),
        'bannerPicture': bannerPicture?.map((e) => e?.toJson())?.toList(),
        'dietaryOfferings': dietaryOfferings?.map((e) => enumToString(e))?.toList(),
        'yearsOfExperience': yearsOfExperience,
        'cuisines': cuisines,
        'verificationDocuments': verificationDocuments?.map((e) => e?.toJson())?.toList(),
        'menuItems': menuItems?.map((e) => e?.toJson())?.toList(),
        'status': enumToString(status),
        'birthDate': birthDate,
        'baseType': baseType,
        'minOrderTimeInMinutes': minOrderTimeInMinutes,
        'openingHours': openingHours,
        'orders': orders?.map((e) => e?.toJson())?.toList(),
        'commissionPercentage': commissionPercentage
      };

  static final QueryField ID = QueryField(fieldName: "chefProfile.id");
  static final QueryField GUAUHANDLE = QueryField(fieldName: "guauHandle");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField SALUTATION = QueryField(fieldName: "salutation");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField MIDDLENAME = QueryField(fieldName: "middleName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField GENDER = QueryField(fieldName: "gender");
  static final QueryField DISPLAYNAME = QueryField(fieldName: "displayName");
  static final QueryField ABOUT = QueryField(fieldName: "about");
  static final QueryField ADDRESS = QueryField(fieldName: "address", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Address).toString()));
  static final QueryField ORIGINCOUNTRY = QueryField(fieldName: "originCountry");
  static final QueryField PROFILEPICTURE =
      QueryField(fieldName: "profilePicture", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Document).toString()));
  static final QueryField BANNERPICTURE =
      QueryField(fieldName: "bannerPicture", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Document).toString()));
  static final QueryField DIETARYOFFERINGS = QueryField(fieldName: "dietaryOfferings");
  static final QueryField YEARSOFEXPERIENCE = QueryField(fieldName: "yearsOfExperience");
  static final QueryField CUISINES = QueryField(fieldName: "cuisines");
  static final QueryField VERIFICATIONDOCUMENTS =
      QueryField(fieldName: "verificationDocuments", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Document).toString()));
  static final QueryField MENUITEMS =
      QueryField(fieldName: "menuItems", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuItem).toString()));
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField BIRTHDATE = QueryField(fieldName: "birthDate");
  static final QueryField BASETYPE = QueryField(fieldName: "baseType");
  static final QueryField MINORDERTIMEINMINUTES = QueryField(fieldName: "minOrderTimeInMinutes");
  static final QueryField OPENINGHOURS = QueryField(fieldName: "openingHours");
  static final QueryField ORDERS = QueryField(fieldName: "orders", fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField COMMISSIONPERCENTAGE = QueryField(fieldName: "commissionPercentage");
  static var schema = Model.defineSchema(define: (modelSchemaDefinition) {
    modelSchemaDefinition.name = "ChefProfile";
    modelSchemaDefinition.pluralName = "ChefProfiles";

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
        .addField(ModelFieldDefinition.field(key: ChefProfile.GUAUHANDLE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: ChefProfile.EMAIL, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.SALUTATION, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: ChefProfile.FIRSTNAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.MIDDLENAME, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: ChefProfile.LASTNAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.GENDER, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.DISPLAYNAME, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: ChefProfile.ABOUT, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.hasMany(key: ChefProfile.ADDRESS, isRequired: false, ofModelName: (Address).toString(), associatedKey: Address.GUAUHANDLE));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.ORIGINCOUNTRY, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: ChefProfile.PROFILEPICTURE, isRequired: false, ofModelName: (Document).toString(), associatedKey: Document.GUAUHANDLE));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: ChefProfile.BANNERPICTURE, isRequired: false, ofModelName: (Document).toString(), associatedKey: Document.GUAUHANDLE));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ChefProfile.DIETARYOFFERINGS,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.YEARSOFEXPERIENCE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ChefProfile.CUISINES,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: ChefProfile.VERIFICATIONDOCUMENTS, isRequired: false, ofModelName: (Document).toString(), associatedKey: Document.GUAUHANDLE));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.hasMany(key: ChefProfile.MENUITEMS, isRequired: false, ofModelName: (MenuItem).toString(), associatedKey: MenuItem.GUAUHANDLE));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.STATUS, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: ChefProfile.BIRTHDATE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(key: ChefProfile.BASETYPE, isRequired: true, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.MINORDERTIMEINMINUTES, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.OPENINGHOURS, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(
        ModelFieldDefinition.hasMany(key: ChefProfile.ORDERS, isRequired: false, ofModelName: (Order).toString(), associatedKey: Order.CHEFGUAUHANDLE));

    modelSchemaDefinition
        .addField(ModelFieldDefinition.field(key: ChefProfile.COMMISSIONPERCENTAGE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.double)));
  });
}

class _ChefProfileModelType extends ModelType<ChefProfile> {
  const _ChefProfileModelType();

  @override
  ChefProfile fromJson(Map<String, dynamic> jsonData) {
    return ChefProfile.fromJson(jsonData);
  }
}
