import 'package:json_annotation/json_annotation.dart';

part 'committee_entity.g.dart';


@JsonSerializable()
class CommitteeEntity extends Object {

  @JsonKey(name: 'Epoch')
  int epoch;

  @JsonKey(name: 'Slots')
  Slots slots;

  CommitteeEntity(this.epoch,this.slots,);

  factory CommitteeEntity.fromJson(Map<String, dynamic> srcJson) => _$CommitteeEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommitteeEntityToJson(this);

}


@JsonSerializable()
class Slots extends Object {

  @JsonKey(name: 'Entrys')
  List<Entrys> entrys;

  Slots(this.entrys,);

  factory Slots.fromJson(Map<String, dynamic> srcJson) => _$SlotsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SlotsToJson(this);

}


@JsonSerializable()
class Entrys extends Object {

  @JsonKey(name: 'EcdsaAddress')
  String ecdsaAddress;

  @JsonKey(name: 'BLSPublicKey')
  String bLSPublicKey;

  @JsonKey(name: 'EffectiveStake')
  String effectiveStake;

  Entrys(this.ecdsaAddress,this.bLSPublicKey,this.effectiveStake,);

  factory Entrys.fromJson(Map<String, dynamic> srcJson) => _$EntrysFromJson(srcJson);

  Map<String, dynamic> toJson() => _$EntrysToJson(this);

}


