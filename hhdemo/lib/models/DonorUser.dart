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


/** This is an auto generated class representing the DonorUser type in your schema. */
@immutable
class DonorUser extends Model {
  static const classType = const _DonorUserModelType();
  final String id;
  final String? _Email;
  final String? _UserStatus;
  final String? _Phone;
  final String? _RestaurantsID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  DonorUserModelIdentifier get modelIdentifier {
      return DonorUserModelIdentifier(
        id: id
      );
  }
  
  String? get Email {
    return _Email;
  }
  
  String? get UserStatus {
    return _UserStatus;
  }
  
  String? get Phone {
    return _Phone;
  }
  
  String? get RestaurantsID {
    return _RestaurantsID;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const DonorUser._internal({required this.id, Email, UserStatus, Phone, RestaurantsID, createdAt, updatedAt}): _Email = Email, _UserStatus = UserStatus, _Phone = Phone, _RestaurantsID = RestaurantsID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory DonorUser({String? id, String? Email, String? UserStatus, String? Phone, String? RestaurantsID}) {
    return DonorUser._internal(
      id: id == null ? UUID.getUUID() : id,
      Email: Email,
      UserStatus: UserStatus,
      Phone: Phone,
      RestaurantsID: RestaurantsID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonorUser &&
      id == other.id &&
      _Email == other._Email &&
      _UserStatus == other._UserStatus &&
      _Phone == other._Phone &&
      _RestaurantsID == other._RestaurantsID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DonorUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Email=" + "$_Email" + ", ");
    buffer.write("UserStatus=" + "$_UserStatus" + ", ");
    buffer.write("Phone=" + "$_Phone" + ", ");
    buffer.write("RestaurantsID=" + "$_RestaurantsID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DonorUser copyWith({String? Email, String? UserStatus, String? Phone, String? RestaurantsID}) {
    return DonorUser._internal(
      id: id,
      Email: Email ?? this.Email,
      UserStatus: UserStatus ?? this.UserStatus,
      Phone: Phone ?? this.Phone,
      RestaurantsID: RestaurantsID ?? this.RestaurantsID);
  }
  
  DonorUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Email = json['Email'],
      _UserStatus = json['UserStatus'],
      _Phone = json['Phone'],
      _RestaurantsID = json['RestaurantsID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Email': _Email, 'UserStatus': _UserStatus, 'Phone': _Phone, 'RestaurantsID': _RestaurantsID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Email': _Email, 'UserStatus': _UserStatus, 'Phone': _Phone, 'RestaurantsID': _RestaurantsID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<DonorUserModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<DonorUserModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField EMAIL = QueryField(fieldName: "Email");
  static final QueryField USERSTATUS = QueryField(fieldName: "UserStatus");
  static final QueryField PHONE = QueryField(fieldName: "Phone");
  static final QueryField RESTAURANTSID = QueryField(fieldName: "RestaurantsID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DonorUser";
    modelSchemaDefinition.pluralName = "DonorUsers";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["Email"], name: "byEmail"),
      ModelIndex(fields: const ["RestaurantsID"], name: "byRestaurant")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DonorUser.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DonorUser.USERSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DonorUser.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DonorUser.RESTAURANTSID,
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

class _DonorUserModelType extends ModelType<DonorUser> {
  const _DonorUserModelType();
  
  @override
  DonorUser fromJson(Map<String, dynamic> jsonData) {
    return DonorUser.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'DonorUser';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [DonorUser] in your schema.
 */
@immutable
class DonorUserModelIdentifier implements ModelIdentifier<DonorUser> {
  final String id;

  /** Create an instance of DonorUserModelIdentifier using [id] the primary key. */
  const DonorUserModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'DonorUserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is DonorUserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}