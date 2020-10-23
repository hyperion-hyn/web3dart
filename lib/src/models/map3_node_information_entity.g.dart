// GENERATED CODE - DO NOT MODIFY BY HAND

part of './map3_node_information_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map3NodeInformationEntity _$Map3NodeInformationEntityFromJson(
    Map<String, dynamic> json) {
  return Map3NodeInformationEntity(
    json['Map3Node'] == null
        ? null
        : Map3Node.fromJson(json['Map3Node'] as Map<String, dynamic>),
    (json['Microdelegations'] as List)
        ?.map((e) => e == null
            ? null
            : Microdelegations.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['RedelegationReference'] as String,
    json['AccumulatedReward'] as num,
    json['TotalDelegation'] as num,
    json['TotalPendingDelegation'] as num,
  );
}

Map<String, dynamic> _$Map3NodeInformationEntityToJson(
        Map3NodeInformationEntity instance) =>
    <String, dynamic>{
      'Map3Node': instance.map3Node,
      'Microdelegations': instance.microdelegations,
      'RedelegationReference': instance.redelegationReference,
      'AccumulatedReward': instance.accumulatedReward,
      'TotalDelegation': instance.totalDelegation,
      'TotalPendingDelegation': instance.totalPendingDelegation,
    };

Map3Node _$Map3NodeFromJson(Map<String, dynamic> json) {
  return Map3Node(
    json['Map3Address'] as String,
    json['OperatorAddress'] as String,
    json['NodeKeys'] as List,
    json['Commission'] == null
        ? null
        : Commission.fromJson(json['Commission'] as Map<String, dynamic>),
    json['Description'] == null
        ? null
        : Description.fromJson(json['Description'] as Map<String, dynamic>),
    json['CreationHeight'] as int,
    json['Age'] as String,
    json['Status'] as int,
    json['PendingEpoch'] as int,
    json['ActivationEpoch'] as int,
    json['ReleaseEpoch'] as String,
  );
}

Map<String, dynamic> _$Map3NodeToJson(Map3Node instance) => <String, dynamic>{
      'Map3Address': instance.map3Address,
      'OperatorAddress': instance.operatorAddress,
      'NodeKeys': instance.nodeKeys,
      'Commission': instance.commission,
      'Description': instance.description,
      'CreationHeight': instance.creationHeight,
      'Age': instance.age,
      'Status': instance.status,
      'PendingEpoch': instance.pendingEpoch,
      'ActivationEpoch': instance.activationEpoch,
      'ReleaseEpoch': instance.releaseEpoch,
    };

Commission _$CommissionFromJson(Map<String, dynamic> json) {
  return Commission(
    json['Rate'] as String,
    json['RateForNextPeriod'] as String,
    json['UpdateHeight'] as int,
  );
}

Map<String, dynamic> _$CommissionToJson(Commission instance) =>
    <String, dynamic>{
      'Rate': instance.rate,
      'RateForNextPeriod': instance.rateForNextPeriod,
      'UpdateHeight': instance.updateHeight,
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

Microdelegations _$MicrodelegationsFromJson(Map<String, dynamic> json) {
  return Microdelegations(
    json['DelegatorAddress'] as String,
    json['Amount'] as num,
    json['Reward'] as num,
    json['PendingDelegation'] == null
        ? null
        : PendingDelegation.fromJson(
            json['PendingDelegation'] as Map<String, dynamic>),
    json['Undelegation'] == null
        ? null
        : Undelegation.fromJson(json['Undelegation'] as Map<String, dynamic>),
    json['Renewal'] == null
        ? null
        : Renewal.fromJson(json['Renewal'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MicrodelegationsToJson(Microdelegations instance) =>
    <String, dynamic>{
      'DelegatorAddress': instance.delegatorAddress,
      'Amount': instance.amount,
      'Reward': instance.reward,
      'PendingDelegation': instance.pendingDelegation,
      'Undelegation': instance.undelegation,
      'Renewal': instance.renewal,
    };

PendingDelegation _$PendingDelegationFromJson(Map<String, dynamic> json) {
  return PendingDelegation(
    json['Amount'] as num,
    json['UnlockedEpoch'] as String,
  );
}

Map<String, dynamic> _$PendingDelegationToJson(PendingDelegation instance) =>
    <String, dynamic>{
      'Amount': instance.amount,
      'UnlockedEpoch': instance.unlockedEpoch,
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

Renewal _$RenewalFromJson(Map<String, dynamic> json) {
  return Renewal(
    json['Status'] as int,
    json['UpdateHeight'] as int,
  );
}

Map<String, dynamic> _$RenewalToJson(Renewal instance) => <String, dynamic>{
      'Status': instance.status,
      'UpdateHeight': instance.updateHeight,
    };
