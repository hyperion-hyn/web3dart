import 'package:json_annotation/json_annotation.dart';

part 'validator_redelegation_entity.g.dart';


@JsonSerializable()
class ValidatorRedelegationEntity extends Object {

  @JsonKey(name: 'DelegatorAddress')
  String delegatorAddress;

  @JsonKey(name: 'Amount')
  num amount;

  @JsonKey(name: 'Reward')
  num reward;

  @JsonKey(name: 'Undelegation')
  Undelegation undelegation;

  ValidatorRedelegationEntity(this.delegatorAddress,this.amount,this.reward,this.undelegation,);

  factory ValidatorRedelegationEntity.fromJson(Map<String, dynamic> srcJson) => _$ValidatorRedelegationEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ValidatorRedelegationEntityToJson(this);

}


@JsonSerializable()
class Undelegation extends Object {

  @JsonKey(name: 'Amount')
  int amount;

  @JsonKey(name: 'Epoch')
  int epoch;

  Undelegation(this.amount,this.epoch,);

  factory Undelegation.fromJson(Map<String, dynamic> srcJson) => _$UndelegationFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UndelegationToJson(this);

}


