/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Restaurants type in your schema. */
@immutable
class Restaurants extends Model {
  static const classType = const _RestaurantsModelType();
  final String id;
  final String? _Name;
  final String? _Address;
  final String? _Address2;
  final String? _City;
  final String? _State;
  final int? _Zipcode;
  final String? _Contact1;
  final String? _Contact2;
  final String? _Phone1;
  final String? _Phone2;
  final String? _Email;
  final String? _RestaurantID;
  final String? _Web;
  final String? _Menu;
  final String? _imagekey;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get Name {
    return _Name;
  }
  
  String? get Address {
    return _Address;
  }
  
  String? get Address2 {
    return _Address2;
  }
  
  String? get City {
    return _City;
  }
  
  String? get State {
    return _State;
  }
  
  int? get Zipcode {
    return _Zipcode;
  }
  
  String? get Contact1 {
    return _Contact1;
  }
  
  String? get Contact2 {
    return _Contact2;
  }
  
  String? get Phone1 {
    return _Phone1;
  }
  
  String? get Phone2 {
    return _Phone2;
  }
  
  String? get Email {
    return _Email;
  }
  
  String? get RestaurantID {
    return _RestaurantID;
  }
  
  String? get Web {
    return _Web;
  }
  
  String? get Menu {
    return _Menu;
  }
  
  String? get imagekey {
    return _imagekey;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Restaurants._internal({required this.id, Name, Address, Address2, City, State, Zipcode, Contact1, Contact2, Phone1, Phone2, Email, RestaurantID, Web, Menu, imagekey, createdAt, updatedAt}): _Name = Name, _Address = Address, _Address2 = Address2, _City = City, _State = State, _Zipcode = Zipcode, _Contact1 = Contact1, _Contact2 = Contact2, _Phone1 = Phone1, _Phone2 = Phone2, _Email = Email, _RestaurantID = RestaurantID, _Web = Web, _Menu = Menu, _imagekey = imagekey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Restaurants({String? id, String? Name, String? Address, String? Address2, String? City, String? State, int? Zipcode, String? Contact1, String? Contact2, String? Phone1, String? Phone2, String? Email, String? RestaurantID, String? Web, String? Menu, String? imagekey}) {
    return Restaurants._internal(
      id: id == null ? UUID.getUUID() : id,
      Name: Name,
      Address: Address,
      Address2: Address2,
      City: City,
      State: State,
      Zipcode: Zipcode,
      Contact1: Contact1,
      Contact2: Contact2,
      Phone1: Phone1,
      Phone2: Phone2,
      Email: Email,
      RestaurantID: RestaurantID,
      Web: Web,
      Menu: Menu,
      imagekey: imagekey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurants &&
      id == other.id &&
      _Name == other._Name &&
      _Address == other._Address &&
      _Address2 == other._Address2 &&
      _City == other._City &&
      _State == other._State &&
      _Zipcode == other._Zipcode &&
      _Contact1 == other._Contact1 &&
      _Contact2 == other._Contact2 &&
      _Phone1 == other._Phone1 &&
      _Phone2 == other._Phone2 &&
      _Email == other._Email &&
      _RestaurantID == other._RestaurantID &&
      _Web == other._Web &&
      _Menu == other._Menu &&
      _imagekey == other._imagekey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Restaurants {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Address=" + "$_Address" + ", ");
    buffer.write("Address2=" + "$_Address2" + ", ");
    buffer.write("City=" + "$_City" + ", ");
    buffer.write("State=" + "$_State" + ", ");
    buffer.write("Zipcode=" + (_Zipcode != null ? _Zipcode!.toString() : "null") + ", ");
    buffer.write("Contact1=" + "$_Contact1" + ", ");
    buffer.write("Contact2=" + "$_Contact2" + ", ");
    buffer.write("Phone1=" + "$_Phone1" + ", ");
    buffer.write("Phone2=" + "$_Phone2" + ", ");
    buffer.write("Email=" + "$_Email" + ", ");
    buffer.write("RestaurantID=" + "$_RestaurantID" + ", ");
    buffer.write("Web=" + "$_Web" + ", ");
    buffer.write("Menu=" + "$_Menu" + ", ");
    buffer.write("imagekey=" + "$_imagekey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Restaurants copyWith({String? id, String? Name, String? Address, String? Address2, String? City, String? State, int? Zipcode, String? Contact1, String? Contact2, String? Phone1, String? Phone2, String? Email, String? RestaurantID, String? Web, String? Menu, String? imagekey}) {
    return Restaurants._internal(
      id: id ?? this.id,
      Name: Name ?? this.Name,
      Address: Address ?? this.Address,
      Address2: Address2 ?? this.Address2,
      City: City ?? this.City,
      State: State ?? this.State,
      Zipcode: Zipcode ?? this.Zipcode,
      Contact1: Contact1 ?? this.Contact1,
      Contact2: Contact2 ?? this.Contact2,
      Phone1: Phone1 ?? this.Phone1,
      Phone2: Phone2 ?? this.Phone2,
      Email: Email ?? this.Email,
      RestaurantID: RestaurantID ?? this.RestaurantID,
      Web: Web ?? this.Web,
      Menu: Menu ?? this.Menu,
      imagekey: imagekey ?? this.imagekey);
  }
  
  Restaurants.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Address = json['Address'],
      _Address2 = json['Address2'],
      _City = json['City'],
      _State = json['State'],
      _Zipcode = (json['Zipcode'] as num?)?.toInt(),
      _Contact1 = json['Contact1'],
      _Contact2 = json['Contact2'],
      _Phone1 = json['Phone1'],
      _Phone2 = json['Phone2'],
      _Email = json['Email'],
      _RestaurantID = json['RestaurantID'],
      _Web = json['Web'],
      _Menu = json['Menu'],
      _imagekey = json['imagekey'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Address': _Address, 'Address2': _Address2, 'City': _City, 'State': _State, 'Zipcode': _Zipcode, 'Contact1': _Contact1, 'Contact2': _Contact2, 'Phone1': _Phone1, 'Phone2': _Phone2, 'Email': _Email, 'RestaurantID': _RestaurantID, 'Web': _Web, 'Menu': _Menu, 'imagekey': _imagekey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Name': _Name, 'Address': _Address, 'Address2': _Address2, 'City': _City, 'State': _State, 'Zipcode': _Zipcode, 'Contact1': _Contact1, 'Contact2': _Contact2, 'Phone1': _Phone1, 'Phone2': _Phone2, 'Email': _Email, 'RestaurantID': _RestaurantID, 'Web': _Web, 'Menu': _Menu, 'imagekey': _imagekey, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static final QueryField ADDRESS = QueryField(fieldName: "Address");
  static final QueryField ADDRESS2 = QueryField(fieldName: "Address2");
  static final QueryField CITY = QueryField(fieldName: "City");
  static final QueryField STATE = QueryField(fieldName: "State");
  static final QueryField ZIPCODE = QueryField(fieldName: "Zipcode");
  static final QueryField CONTACT1 = QueryField(fieldName: "Contact1");
  static final QueryField CONTACT2 = QueryField(fieldName: "Contact2");
  static final QueryField PHONE1 = QueryField(fieldName: "Phone1");
  static final QueryField PHONE2 = QueryField(fieldName: "Phone2");
  static final QueryField EMAIL = QueryField(fieldName: "Email");
  static final QueryField RESTAURANTID = QueryField(fieldName: "RestaurantID");
  static final QueryField WEB = QueryField(fieldName: "Web");
  static final QueryField MENU = QueryField(fieldName: "Menu");
  static final QueryField IMAGEKEY = QueryField(fieldName: "imagekey");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Restaurants";
    modelSchemaDefinition.pluralName = "Restaurants";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.ADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.ADDRESS2,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.CITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.STATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.ZIPCODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.CONTACT1,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.CONTACT2,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.PHONE1,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.PHONE2,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.RESTAURANTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.WEB,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.MENU,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurants.IMAGEKEY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _RestaurantsModelType extends ModelType<Restaurants> {
  const _RestaurantsModelType();
  
  @override
  Restaurants fromJson(Map<String, dynamic> jsonData) {
    return Restaurants.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Restaurants';
  }
}