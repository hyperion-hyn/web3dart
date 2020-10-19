// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validator_information_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatorInformationEntity _$ValidatorInformationEntityFromJson(
    Map<String, dynamic> json) {
  return ValidatorInformationEntity(
    json['Validator'] == null
        ? null
        : Validator.fromJson(json['Validator'] as Map<String, dynamic>),
    (json['Redelegations'] as List)
        ?.map((e) => e == null
            ? null
            : Redelegations.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['Counters'] == null
        ? null
        : Counters.fromJson(json['Counters'] as Map<String, dynamic>),
    json['BlockReward'] as num,
    json['TotalDelegation'] as double,
    json['TotalDelegationByOperator'] as double,
  );
}

Map<String, dynamic> _$ValidatorInformationEntityToJson(
        ValidatorInformationEntity instance) =>
    <String, dynamic>{
      'Validator': instance.validator,
      'Redelegations': instance.redelegations,
      'Counters': instance.counters,
      'BlockReward': instance.blockReward,
      'TotalDelegation': instance.totalDelegation,
      'TotalDelegationByOperator': instance.totalDelegationByOperator,
    };

Validator _$ValidatorFromJson(Map<String, dynamic> json) {
  return Validator(
    json['ValidatorAddress'] as String,
    (json['OperatorAddresses'] as List)?.map((e) => e as String)?.toList(),
    (json['SlotPubKeys'] as List)?.map((e) => e as String)?.toList(),
    json['LastEpochInCommittee'] as int,
    json['MaxTotalDelegation'] as double,
    json['Status'] as int,
    json['Commission'] == null
        ? null
        : Commission.fromJson(json['Commission'] as Map<String, dynamic>),
    json['Description'] == null
        ? null
        : Description.fromJson(json['Description'] as Map<String, dynamic>),
    json['CreationHeight'] as int,
  );
}

Map<String, dynamic> _$ValidatorToJson(Validator instance) => <String, dynamic>{
      'ValidatorAddress': instance.validatorAddress,
      'OperatorAddresses': instance.operatorAddresses,
      'SlotPubKeys': instance.slotPubKeys,
      'LastEpochInCommittee': instance.lastEpochInCommittee,
      'MaxTotalDelegation': instance.maxTotalDelegation,
      'Status': instance.status,
      'Commission': instance.commission,
      'Description': instance.description,
      'CreationHeight': instance.creationHeight,
    };

Commission _$CommissionFromJson(Map<String, dynamic> json) {
  return Commission(
    json['CommissionRates'] == null
        ? null
        : CommissionRates.fromJson(
            json['CommissionRates'] as Map<String, dynamic>),
    json['UpdateHeight'] as int,
  );
}

Map<String, dynamic> _$CommissionToJson(Commission instance) =>
    <String, dynamic>{
      'CommissionRates': instance.commissionRates,
      'UpdateHeight': instance.updateHeight,
    };

CommissionRates _$CommissionRatesFromJson(Map<String, dynamic> json) {
  return CommissionRates(
    json['Rate'] as String,
    json['MaxRate'] as String,
    json['MaxChangeRate'] as String,
  );
}

Map<String, dynamic> _$CommissionRatesToJson(CommissionRates instance) =>
    <String, dynamic>{
      'Rate': instance.rate,
      'MaxRate': instance.maxRate,
      'MaxChangeRate': instance.maxChangeRate,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description(
    json['Name'] as String,
    json['Identity'] as String,
    json['Website'] as String,
    json['SecurityContact'] as String,
    json['Details'] as String,
  );
}

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Identity': instance.identity,
      'Website': instance.website,
      'SecurityContact': instance.securityContact,
      'Details': instance.details,
    };

Redelegations _$RedelegationsFromJson(Map<String, dynamic> json) {
  return Redelegations(
    json['DelegatorAddress'] as String,
    json['Amount'] as double,
    json['Reward'] as num,
    json['Undelegation'] == null
        ? null
        : Undelegation.fromJson(json['Undelegation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RedelegationsToJson(Redelegations instance) =>
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

Counters _$CountersFromJson(Map<String, dynamic> json) {
  return Counters(
    json['NumBlocksToSign'] as int,
    json['NumBlocksSigned'] as int,
  );
}

Map<String, dynamic> _$CountersToJson(Counters instance) => <String, dynamic>{
      'NumBlocksToSign': instance.numBlocksToSign,
      'NumBlocksSigned': instance.numBlocksSigned,
    };
