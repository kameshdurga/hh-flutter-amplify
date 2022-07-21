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
  final String? _OrderID;
  final String? _LineItems;
  final String? _UserID;
  final double? _SubTotal;
  final double? _Tax;
  final String? _untitledfield;
  final double? _ServiceFee;
  final double? _Total;
  final TemporalTimestamp? _CreatedAt;
  final String? _usersID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get OrderID {
    return _OrderID;
  }
  
  String? get LineItems {
    return _LineItems;
  }
  
  String? get UserID {
    return _UserID;
  }
  
  double? get SubTotal {
    return _SubTotal;
  }
  
  double? get Tax {
    return _Tax;
  }
  
  String? get untitledfield {
    return _untitledfield;
  }
  
  double? get ServiceFee {
    return _ServiceFee;
  }
  
  double? get Total {
    return _Total;
  }
  
  TemporalTimestamp? get CreatedAt {
    return _CreatedAt;
  }
  
  String get usersID {
    try {
      return _usersID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const OrderItem._internal({required this.id, OrderID, LineItems, UserID, SubTotal, Tax, untitledfield, ServiceFee, Total, CreatedAt, required usersID, createdAt, updatedAt}): _OrderID = OrderID, _LineItems = LineItems, _UserID = UserID, _SubTotal = SubTotal, _Tax = Tax, _untitledfield = untitledfield, _ServiceFee = ServiceFee, _Total = Total, _CreatedAt = CreatedAt, _usersID = usersID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory OrderItem({String? id, String? OrderID, String? LineItems, String? UserID, double? SubTotal, double? Tax, String? untitledfield, double? ServiceFee, double? Total, TemporalTimestamp? CreatedAt, required String usersID}) {
    return OrderItem._internal(
      id: id == null ? UUID.getUUID() : id,
      OrderID: OrderID,
      LineItems: LineItems,
      UserID: UserID,
      SubTotal: SubTotal,
      Tax: Tax,
      untitledfield: untitledfield,
      ServiceFee: ServiceFee,
      Total: Total,
      CreatedAt: CreatedAt,
      usersID: usersID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItem &&
      id == other.id &&
      _OrderID == other._OrderID &&
      _LineItems == other._LineItems &&
      _UserID == other._UserID &&
      _SubTotal == other._SubTotal &&
      _Tax == other._Tax &&
      _untitledfield == other._untitledfield &&
      _ServiceFee == other._ServiceFee &&
      _Total == other._Total &&
      _CreatedAt == other._CreatedAt &&
      _usersID == other._usersID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OrderItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("OrderID=" + "$_OrderID" + ", ");
    buffer.write("LineItems=" + "$_LineItems" + ", ");
    buffer.write("UserID=" + "$_UserID" + ", ");
    buffer.write("SubTotal=" + (_SubTotal != null ? _SubTotal!.toString() : "null") + ", ");
    buffer.write("Tax=" + (_Tax != null ? _Tax!.toString() : "null") + ", ");
    buffer.write("untitledfield=" + "$_untitledfield" + ", ");
    buffer.write("ServiceFee=" + (_ServiceFee != null ? _ServiceFee!.toString() : "null") + ", ");
    buffer.write("Total=" + (_Total != null ? _Total!.toString() : "null") + ", ");
    buffer.write("CreatedAt=" + (_CreatedAt != null ? _CreatedAt!.toString() : "null") + ", ");
    buffer.write("usersID=" + "$_usersID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OrderItem copyWith({String? id, String? OrderID, String? LineItems, String? UserID, double? SubTotal, double? Tax, String? untitledfield, double? ServiceFee, double? Total, TemporalTimestamp? CreatedAt, String? usersID}) {
    return OrderItem._internal(
      id: id ?? this.id,
      OrderID: OrderID ?? this.OrderID,
      LineItems: LineItems ?? this.LineItems,
      UserID: UserID ?? this.UserID,
      SubTotal: SubTotal ?? this.SubTotal,
      Tax: Tax ?? this.Tax,
      untitledfield: untitledfield ?? this.untitledfield,
      ServiceFee: ServiceFee ?? this.ServiceFee,
      Total: Total ?? this.Total,
      CreatedAt: CreatedAt ?? this.CreatedAt,
      usersID: usersID ?? this.usersID);
  }
  
  OrderItem.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _OrderID = json['OrderID'],
      _LineItems = json['LineItems'],
      _UserID = json['UserID'],
      _SubTotal = (json['SubTotal'] as num?)?.toDouble(),
      _Tax = (json['Tax'] as num?)?.toDouble(),
      _untitledfield = json['untitledfield'],
      _ServiceFee = (json['ServiceFee'] as num?)?.toDouble(),
      _Total = (json['Total'] as num?)?.toDouble(),
      _CreatedAt = json['CreatedAt'] != null ? TemporalTimestamp.fromSeconds(json['CreatedAt']) : null,
      _usersID = json['usersID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'OrderID': _OrderID, 'LineItems': _LineItems, 'UserID': _UserID, 'SubTotal': _SubTotal, 'Tax': _Tax, 'untitledfield': _untitledfield, 'ServiceFee': _ServiceFee, 'Total': _Total, 'CreatedAt': _CreatedAt?.toSeconds(), 'usersID': _usersID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "orderItem.id");
  static final QueryField ORDERID = QueryField(fieldName: "OrderID");
  static final QueryField LINEITEMS = QueryField(fieldName: "LineItems");
  static final QueryField USERID = QueryField(fieldName: "UserID");
  static final QueryField SUBTOTAL = QueryField(fieldName: "SubTotal");
  static final QueryField TAX = QueryField(fieldName: "Tax");
  static final QueryField UNTITLEDFIELD = QueryField(fieldName: "untitledfield");
  static final QueryField SERVICEFEE = QueryField(fieldName: "ServiceFee");
  static final QueryField TOTAL = QueryField(fieldName: "Total");
  static final QueryField CREATEDAT = QueryField(fieldName: "CreatedAt");
  static final QueryField USERSID = QueryField(fieldName: "usersID");
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.ORDERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.LINEITEMS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.USERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.SUBTOTAL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.TAX,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.UNTITLEDFIELD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.SERVICEFEE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.TOTAL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OrderItem.USERSID,
      isRequired: true,
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
}