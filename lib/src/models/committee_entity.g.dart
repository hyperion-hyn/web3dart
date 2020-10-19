// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'committee_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitteeEntity _$CommitteeEntityFromJson(Map<String, dynamic> json) {
  return CommitteeEntity(
    json['Epoch'] as int,
    json['Slots'] == null
        ? null
        : Slots.fromJson(json['Slots'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitteeEntityToJson(CommitteeEntity instance) =>
    <String, dynamic>{
      'Epoch': instance.epoch,
      'Slots': instance.slots,
    };

Slots _$SlotsFromJson(Map<String, dynamic> json) {
  return Slots(
    (json['Entrys'] as List)
        ?.map((e) =>
            e == null ? null : Entrys.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SlotsToJson(Slots instance) => <String, dynamic>{
      'Entrys': instance.entrys,
    };

Entrys _$EntrysFromJson(Map<String, dynamic> json) {
  return Entrys(
    json['EcdsaAddress'] as String,
    json['BLSPublicKey'] as String,
    json['EffectiveStake'] as String,
  );
}

Map<String, dynamic> _$EntrysToJson(Entrys instance) => <String, dynamic>{
      'EcdsaAddress': instance.ecdsaAddress,
      'BLSPublicKey': instance.bLSPublicKey,
      'EffectiveStake': instance.effectiveStake,
    };
