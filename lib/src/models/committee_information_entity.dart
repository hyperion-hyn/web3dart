import 'package:json_annotation/json_annotation.dart';

part 'committee_information_entity.g.dart';


@JsonSerializable()
class CommitteeInformationEntity extends Object {

  @JsonKey(name: 'Validator')
  Validator validator;

  @JsonKey(name: 'Redelegations')
  List<Redelegations> redelegations;

  @JsonKey(name: 'Counters')
  Counters counters;

  @JsonKey(name: 'BlockReward')
  int blockReward;

  @JsonKey(name: 'TotalDelegation')
  num totalDelegation;

  @JsonKey(name: 'TotalDelegationByOperator')
  num totalDelegationByOperator;

  CommitteeInformationEntity(this.validator,this.redelegations,this.counters,this.blockReward,this.totalDelegation,this.totalDelegationByOperator,);

  factory CommitteeInformationEntity.fromJson(Map<String, dynamic> srcJson) => _$CommitteeInformationEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommitteeInformationEntityToJson(this);

}


@JsonSerializable()
class Validator extends Object {

  @JsonKey(name: 'ValidatorAddress')
  String validatorAddress;

  @JsonKey(name: 'OperatorAddresses')
  List<String> operatorAddresses;

  @JsonKey(name: 'SlotPubKeys')
  List<String> slotPubKeys;

  @JsonKey(name: 'LastEpochInCommittee')
  int lastEpochInCommittee;

  @JsonKey(name: 'MaxTotalDelegation')
  num maxTotalDelegation;

  @JsonKey(name: 'Status')
  int status;

  @JsonKey(name: 'Commission')
  Commission commission;

  @JsonKey(name: 'Description')
  Description description;

  @JsonKey(name: 'CreationHeight')
  int creationHeight;

  Validator(this.validatorAddress,this.operatorAddresses,this.slotPubKeys,this.lastEpochInCommittee,this.maxTotalDelegation,this.status,this.commission,this.description,this.creationHeight,);

  factory Validator.fromJson(Map<String, dynamic> srcJson) => _$ValidatorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ValidatorToJson(this);

}


@JsonSerializable()
class Commission extends Object {

  @JsonKey(name: 'CommissionRates')
  CommissionRates commissionRates;

  @JsonKey(name: 'UpdateHeight')
  int updateHeight;

  Commission(this.commissionRates,this.updateHeight,);

  factory Commission.fromJson(Map<String, dynamic> srcJson) => _$CommissionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommissionToJson(this);

}


@JsonSerializable()
class CommissionRates extends Object {

  @JsonKey(name: 'Rate')
  String rate;

  @JsonKey(name: 'MaxRate')
  String maxRate;

  @JsonKey(name: 'MaxChangeRate')
  String maxChangeRate;

  CommissionRates(this.rate,this.maxRate,this.maxChangeRate,);

  factory CommissionRates.fromJson(Map<String, dynamic> srcJson) => _$CommissionRatesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommissionRatesToJson(this);

}


@JsonSerializable()
class Description extends Object {

  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'Identity')
  String identity;

  @JsonKey(name: 'Website')
  String website;

  @JsonKey(name: 'SecurityContact')
  String securityContact;

  @JsonKey(name: 'Details')
  String details;

  Description(this.name,this.identity,this.website,this.securityContact,this.details,);

  factory Description.fromJson(Map<String, dynamic> srcJson) => _$DescriptionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);

}


@JsonSerializable()
class Redelegations extends Object {

  @JsonKey(name: 'DelegatorAddress')
  String delegatorAddress;

  @JsonKey(name: 'Amount')
  num amount;

  @JsonKey(name: 'Reward')
  int reward;

  @JsonKey(name: 'Undelegation')
  Undelegation undelegation;

  Redelegations(this.delegatorAddress,this.amount,this.reward,this.undelegation,);

  factory Redelegations.fromJson(Map<String, dynamic> srcJson) => _$RedelegationsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RedelegationsToJson(this);

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


@JsonSerializable()
class Counters extends Object {

  @JsonKey(name: 'NumBlocksToSign')
  int numBlocksToSign;

  @JsonKey(name: 'NumBlocksSigned')
  int numBlocksSigned;

  Counters(this.numBlocksToSign,this.numBlocksSigned,);

  factory Counters.fromJson(Map<String, dynamic> srcJson) => _$CountersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CountersToJson(this);

}