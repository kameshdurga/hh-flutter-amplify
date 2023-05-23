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


/** This is an auto generated class representing the Users type in your schema. */
@immutable
class Users extends Model {
  static const classType = const _UsersModelType();
  final String id;
  final String? _Email;
  final String? _UserStatus;
  final String? _Phone;
  final String? _NotificationStatus;
  final String? _zipcode;
  final TemporalDateTime? _timestamp;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UsersModelIdentifier get modelIdentifier {
      return UsersModelIdentifier(
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
  
  String? get NotificationStatus {
    return _NotificationStatus;
  }
  
  String get zipcode {
    try {
      return _zipcode!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get timestamp {
    return _timestamp;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Users._internal({required this.id, Email, UserStatus, Phone, NotificationStatus, required zipcode, timestamp, createdAt, updatedAt}): _Email = Email, _UserStatus = UserStatus, _Phone = Phone, _NotificationStatus = NotificationStatus, _zipcode = zipcode, _timestamp = timestamp, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Users({String? id, String? Email, String? UserStatus, String? Phone, String? NotificationStatus, required String zipcode, TemporalDateTime? timestamp}) {
    return Users._internal(
      id: id == null ? UUID.getUUID() : id,
      Email: Email,
      UserStatus: UserStatus,
      Phone: Phone,
      NotificationStatus: NotificationStatus,
      zipcode: zipcode,
      timestamp: timestamp);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users &&
      id == other.id &&
      _Email == other._Email &&
      _UserStatus == other._UserStatus &&
      _Phone == other._Phone &&
      _NotificationStatus == other._NotificationStatus &&
      _zipcode == other._zipcode &&
      _timestamp == other._timestamp;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Users {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Email=" + "$_Email" + ", ");
    buffer.write("UserStatus=" + "$_UserStatus" + ", ");
    buffer.write("Phone=" + "$_Phone" + ", ");
    buffer.write("NotificationStatus=" + "$_NotificationStatus" + ", ");
    buffer.write("zipcode=" + "$_zipcode" + ", ");
    buffer.write("timestamp=" + (_timestamp != null ? _timestamp!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Users copyWith({String? Email, String? UserStatus, String? Phone, String? NotificationStatus, String? zipcode, TemporalDateTime? timestamp}) {
    return Users._internal(
      id: id,
      Email: Email ?? this.Email,
      UserStatus: UserStatus ?? this.UserStatus,
      Phone: Phone ?? this.Phone,
      NotificationStatus: NotificationStatus ?? this.NotificationStatus,
      zipcode: zipcode ?? this.zipcode,
      timestamp: timestamp ?? this.timestamp);
  }
  
  Users.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Email = json['Email'],
      _UserStatus = json['UserStatus'],
      _Phone = json['Phone'],
      _NotificationStatus = json['NotificationStatus'],
      _zipcode = json['zipcode'],
      _timestamp = json['timestamp'] != null ? TemporalDateTime.fromString(json['timestamp']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Email': _Email, 'UserStatus': _UserStatus, 'Phone': _Phone, 'NotificationStatus': _NotificationStatus, 'zipcode': _zipcode, 'timestamp': _timestamp?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Email': _Email, 'UserStatus': _UserStatus, 'Phone': _Phone, 'NotificationStatus': _NotificationStatus, 'zipcode': _zipcode, 'timestamp': _timestamp, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<UsersModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<UsersModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField EMAIL = QueryField(fieldName: "Email");
  static final QueryField USERSTATUS = QueryField(fieldName: "UserStatus");
  static final QueryField PHONE = QueryField(fieldName: "Phone");
  static final QueryField NOTIFICATIONSTATUS = QueryField(fieldName: "NotificationStatus");
  static final QueryField ZIPCODE = QueryField(fieldName: "zipcode");
  static final QueryField TIMESTAMP = QueryField(fieldName: "timestamp");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Users";
    modelSchemaDefinition.pluralName = "Users";
    
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
      ModelIndex(fields: const ["UserStatus"], name: "UserStatus-index"),
      ModelIndex(fields: const ["Phone"], name: "byPhone"),
      ModelIndex(fields: const ["zipcode", "timestamp"], name: "ZipCodeIndex")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.USERSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.NOTIFICATIONSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.ZIPCODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Users.TIMESTAMP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
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

class _UsersModelType extends ModelType<Users> {
  const _UsersModelType();
  
  @override
  Users fromJson(Map<String, dynamic> jsonData) {
    return Users.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Users';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Users] in your schema.
 */
@immutable
class UsersModelIdentifier implements ModelIdentifier<Users> {
  final String id;

  /** Create an instance of UsersModelIdentifier using [id] the primary key. */
  const UsersModelIdentifier({
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
  String toString() => 'UsersModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UsersModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}