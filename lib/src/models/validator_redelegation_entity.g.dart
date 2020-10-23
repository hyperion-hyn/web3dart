// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validator_redelegation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatorRedelegationEntity _$ValidatorRedelegationEntityFromJson(
    Map<String, dynamic> json) {
  return ValidatorRedelegationEntity(
    json['DelegatorAddress'] as String,
    json['Amount'] as num,
    json['Reward'] as num,
    json['Undelegation'] == null
        ? null
        : Undelegation.fromJson(json['Undelegation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValidatorRedelegationEntityToJson(
        ValidatorRedelegationEntity instance) =>
    <String, dynamic>{
      'DelegatorAddress': instance.delegatorAddress,
      'Amount': instance.amount,
      'Reward': instance.reward,
      'Undelegation': instance.undelegation,
    };

Undelegation _$UndelegationFromJson(Map<String, dynamic> json) {
  return Undelegation(
    json['Amount'] as int,
    json['Epoch'] as int,
  );
}

Map<String, dynamic> _$UndelegationToJson(Undelegation instance) =>
    <String, dynamic>{
      'Amount': instance.amount,
      'Epoch': instance.epoch,
    };
