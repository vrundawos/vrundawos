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

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'Address.dart';
import 'ChefProfile.dart';
import 'Document.dart';
import 'MenuItem.dart';
import 'MenuItemOrder.dart';
import 'MenuItemSide.dart';
import 'Order.dart';
import 'UserProfile.dart';

export 'Address.dart';
export 'ChefProfile.dart';
export 'ChefProfileStatus.dart';
export 'Country.dart';
export 'Cuisine.dart';
export 'DietaryOfferings.dart';
export 'Document.dart';
export 'DocumentStatus.dart';
export 'Gender.dart';
export 'IsSide.dart';
export 'MenuItem.dart';
export 'MenuItemOrder.dart';
export 'MenuItemSide.dart';
export 'Order.dart';
export 'OrderStatus.dart';
export 'ProfileStatus.dart';
export 'Salutation.dart';
export 'State.dart';
export 'UserProfile.dart';
export 'UserProfileStatus.dart';
export 'Visibility.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "88d9f07940f78f00367ea51e26fc9956";
  @override
  List<ModelSchema> modelSchemas = [
    Address.schema,
    ChefProfile.schema,
    Document.schema,
    MenuItem.schema,
    MenuItemOrder.schema,
    MenuItemSide.schema,
    Order.schema,
    UserProfile.schema
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "Address":
        {
          return Address.classType;
        }
        break;
      case "ChefProfile":
        {
          return ChefProfile.classType;
        }
        break;
      case "Document":
        {
          return Document.classType;
        }
        break;
      case "MenuItem":
        {
          return MenuItem.classType;
        }
        break;
      case "MenuItemOrder":
        {
          return MenuItemOrder.classType;
        }
        break;
      case "MenuItemSide":
        {
          return MenuItemSide.classType;
        }
        break;
      case "Order":
        {
          return Order.classType;
        }
        break;
      case "UserProfile":
        {
          return UserProfile.classType;
        }
        break;
      default:
        {
          throw Exception(
              "Failed to find model in model provider for model name: " +
                  modelName);
        }
    }
  }
}
