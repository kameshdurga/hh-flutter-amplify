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


/** This is an auto generated class representing the OrderItem type in your schema. */
@immutable
class OrderItem extends Model {
  static const classType = const _OrderItemModelType();
  final String id;
  final String? _LineItemId;
  final String? _ShopId;
  final String? _ItemSKU;
  final String? _RecipientID;
  final String? _Status;
  final TemporalTimestamp? _UpdatedTime;
  final TemporalTimestamp? _CreatedAt;
  final String? _DonorUserID;
  final TemporalTimestamp? _statusTime;
  final String? _ShardID;
  final String? _RestaurantsID;
  final String? _zipcode;
  final String? _imageKey;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get LineItemId {
    try {
      return _LineItemId!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get ShopId {
    return _ShopId;
  }
  
  String? get ItemSKU {
    return _ItemSKU;
  }
  
  String? get RecipientID {
    return _RecipientID;
  }
  
  String? get Status {
    return _Status;
  }
  
  TemporalTimestamp? get UpdatedTime {
    return _UpdatedTime;
  }
  
  TemporalTimestamp? get CreatedAt {
    return _CreatedAt;
  }
  
  String get DonorUserID {
    try {
      return _DonorUserID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalTimestamp? get statusTime {
    return _statusTime;
  }
  
  String? get ShardID {
    return _ShardID;
  }
  
  String get RestaurantsID {
    try {
      return _RestaurantsID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  String? get imageKey {
    return _imageKey;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const OrderItem._internal({required this.id, required LineItemId, ShopId, ItemSKU, RecipientID, Status, UpdatedTime, CreatedAt, required DonorUserID, statusTime, ShardID, required RestaurantsID, required zipcode, imageKey, createdAt, updatedAt}): _LineItemId = LineItemId, _ShopId = ShopId, _ItemSKU = ItemSKU, _RecipientID = RecipientID, _Status = Status, _UpdatedTime = UpdatedTime, _CreatedAt = CreatedAt, _DonorUserID = DonorUserID, _statusTime = statusTime, _ShardID = ShardID, _RestaurantsID = RestaurantsID, _zipcode = zipcode, _imageKey = imageKey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory OrderItem({String? id, required String LineItemId, String? ShopId, String? ItemSKU, String? RecipientID, String? Status, TemporalTimestamp? UpdatedTime, TemporalTimestamp? CreatedAt, required String DonorUserID, TemporalTimestamp? statusTime, String? ShardID, required String RestaurantsID, required String zipcode, String? imageKey}) {
    return OrderItem._internal(
      id: id == null ? UUID.getUUID() : id,
      LineItemId: LineItemId,
      ShopId: ShopId,
      ItemSKU: ItemSKU,
      RecipientID: RecipientID,
      Status: Status,
      UpdatedTime: UpdatedTime,
      CreatedAt: CreatedAt,
      DonorUserID: DonorUserID,
      statusTime: statusTime,
      ShardID: ShardID,
      RestaurantsID: RestaurantsID,
      zipcode: zipcode,
      imageKey: imageKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItem &&
      id == other.id &&
      _LineItemId == other._LineItemId &&
      _ShopId == other._ShopId &&
      _ItemSKU == other._ItemSKU &&
      _RecipientID == other._RecipientID &&
      _Status == other._Status &&
      _UpdatedTime == other._UpdatedTime &&
      _CreatedAt == other._CreatedAt &&
      _DonorUserID == other._DonorUserID &&
      _statusTime == other._statusTime &&
      _ShardID == other._ShardID &&
      _RestaurantsID == other._RestaurantsID &&
      _zipcode == other._zipcode &&
      _imageKey == other._imageKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OrderItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("LineItemId=" + "$_LineItemId" + ", ");
    buffer.write("ShopId=" + "$_ShopId" + ", ");
    buffer.write("ItemSKU=" + "$_ItemSKU" + ", ");
    buffer.write("RecipientID=" + "$_RecipientID" + ", ");
    buffer.write("Status=" + "$_Status" + ", ");
    buffer.write("UpdatedTime=" + (_UpdatedTime != null ? _UpdatedTime!.toString() : "null") + ", ");
    buffer.write("CreatedAt=" + (_CreatedAt != null ? _CreatedAt!.toString() : "null") + ", ");
    buffer.write("DonorUserID=" + "$_DonorUserID" + ", ");
    buffer.write("statusTime=" + (_statusTime != null ? _statusTime!.toString() : "null") + ", ");
    buffer.write("ShardID=" + "$_ShardID" + ", ");
    buffer.write("RestaurantsID=" + "$_RestaurantsID" + ", ");
    buffer.write("zipcode=" + "$_zipcode" + ", ");
    buffer.write("imageKey=" + "$_imageKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OrderItem copyWith({String? id, String? LineItemId, String? ShopId, String? ItemSKU, String? RecipientID, String? Status, TemporalTimestamp? UpdatedTime, TemporalTimestamp? CreatedAt, String? DonorUserID, TemporalTimestamp? statusTime, String? ShardID, String? RestaurantsID, String? zipcode, String? imageKey}) {
    return OrderItem._internal(
      id: id ?? this.id,
      LineItemId: LineItemId ?? this.LineItemId,
      ShopId: ShopId ?? this.ShopId,
      ItemSKU: ItemSKU ?? this.ItemSKU,
      RecipientID: RecipientID ?? this.RecipientID,
      Status: Status ?? this.Status,
      UpdatedTime: UpdatedTime ?? this.UpdatedTime,
      CreatedAt: CreatedAt ?? this.CreatedAt,
      DonorUserID: DonorUserID ?? this.DonorUserID,
      statusTime: statusTime ?? this.statusTime,
      ShardID: ShardID ?? this.ShardID,
      RestaurantsID: RestaurantsID ?? this.RestaurantsID,
      zipcode: zipcode ?? this.zipcode,
      imageKey: imageKey ?? this.imageKey);
  }
  
  OrderItem.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _LineItemId = json['LineItemId'],
      _ShopId = json['ShopId'],
      _ItemSKU = json['ItemSKU'],
      _RecipientID = json['RecipientID'],
      _Status = json['Status'],
      _UpdatedTime = json['UpdatedTime'] != null ? TemporalTimestamp.fromSeconds(json['UpdatedTime']) : null,
      _CreatedAt = json['CreatedAt'] != null ? TemporalTimestamp.fromSeconds(json['CreatedAt']) : null,
      _DonorUserID = json['DonorUserID'],
      _statusTime = json['statusTime'] != null ? TemporalTimestamp.fromSeconds(json['statusTime']) : null,
      _ShardID = json['ShardID'],
      _RestaurantsID = json['RestaurantsID'],
      _zipcode = json['zipcode'],
      _imageKey = json['imageKey'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'LineItemId': _LineItemId, 'ShopId': _ShopId, 'ItemSKU': _ItemSKU, 'RecipientID': _RecipientID, 'Status': _Status, 'UpdatedTime': _UpdatedTime?.toSeconds(), 'CreatedAt': _CreatedAt?.toSeconds(), 'DonorUserID': _DonorUserID, 'statusTime': _statusTime?.toSeconds(), 'ShardID': _ShardID, 'RestaurantsID': _RestaurantsID, 'zipcode': _zipcode, 'imageKey': _imageKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'LineItemId': _LineItemId, 'ShopId': _ShopId, 'ItemSKU': _ItemSKU, 'RecipientID': _RecipientID, 'Status': _Status, 'UpdatedTime': _UpdatedTime, 'CreatedAt': _CreatedAt, 'DonorUserID': _DonorUserID, 'statusTime': _statusTime, 'ShardID': _ShardID, 'RestaurantsID': _RestaurantsID, 'zipcode': _zipcode, 'imageKey': _imageKey, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField LINEITEMID = QueryField(fieldName: "LineItemId");
  static final QueryField SHOPID = QueryField(fieldName: "ShopId");
  static final QueryField ITEMSKU = QueryField(fieldName: "ItemSKU");
  static final QueryField RECIPIENTID = QueryField(fieldName: "RecipientID");
  static final QueryField STATUS = QueryField(fieldName: "Status");
  static final QueryField UPDATEDTIME = QueryField(fieldName: "UpdatedTime");
  static final QueryField CREATEDAT = QueryField(fieldName: "CreatedAt");
  static final QueryField DONORUSERID = QueryField(fieldName: "DonorUserID");
  static final QueryField STATUSTIME = QueryField(fieldName: "statusTime");
  static final QueryField SHARDID = QueryField(fieldName: "ShardID");
  static final QueryField RESTAURANTSID = QueryField(fieldName: "RestaurantsID");
  static final QueryField ZIPCODE = QueryField(fieldName: "zipcode");
  static final QueryField IMAGEKEY = QueryField(fieldName: "imageKey");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OrderItem";
    modelSchemaDefinition.pluralName = "OrderItems";
    
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
      ModelIndex(fields: const ["id", "LineItemId"], name: null),
      ModelIndex(fields: const ["Status"], name: "Status-index"),
      ModelIndex(fields: const ["DonorUserID"], name: "byDonorUser"),
      ModelIndex(fields: const ["RestaurantsID"], name: "byRestaurant")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.LINEITEMID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.SHOPID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.ITEMSKU,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.RECIPIENTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.UPDATEDTIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.DONORUSERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.STATUSTIME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.SHARDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.RESTAURANTSID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.ZIPCODE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.IMAGEKEY,
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

class _OrderItemModelType extends ModelType<OrderItem> {
  const _OrderItemModelType();
  
  @override
  OrderItem fromJson(Map<String, dynamic> jsonData) {
    return OrderItem.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'OrderItem';
  }
}