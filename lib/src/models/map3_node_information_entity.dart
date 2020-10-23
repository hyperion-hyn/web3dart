import 'package:json_annotation/json_annotation.dart'; 
  
part 'map3_node_information_entity.g.dart';


@JsonSerializable()
  class Map3NodeInformationEntity extends Object {

  @JsonKey(name: 'Map3Node')
  Map3Node map3Node;

  @JsonKey(name: 'Microdelegations')
  List<Microdelegations> microdelegations;

  @JsonKey(name: 'RedelegationReference')
  String redelegationReference;

  @JsonKey(name: 'AccumulatedReward')
  int accumulatedReward;

  @JsonKey(name: 'TotalDelegation')
  num totalDelegation;

  @JsonKey(name: 'TotalPendingDelegation')
  num totalPendingDelegation;

  Map3NodeInformationEntity(this.map3Node,this.microdelegations,this.redelegationReference,this.accumulatedReward,this.totalDelegation,this.totalPendingDelegation,);

  factory Map3NodeInformationEntity.fromJson(Map<String, dynamic> srcJson) => _$Map3NodeInformationEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Map3NodeInformationEntityToJson(this);

}

  
@JsonSerializable()
  class Map3Node extends Object {

  @JsonKey(name: 'Map3Address')
  String map3Address;

  @JsonKey(name: 'OperatorAddress')
  String operatorAddress;

  @JsonKey(name: 'NodeKeys')
  List<dynamic> nodeKeys;

  @JsonKey(name: 'Commission')
  Commission commission;

  @JsonKey(name: 'Description')
  Description description;

  @JsonKey(name: 'CreationHeight')
  int creationHeight;

  @JsonKey(name: 'Age')
  String age;

  @JsonKey(name: 'Status')
  int status;

  @JsonKey(name: 'PendingEpoch')
  int pendingEpoch;

  @JsonKey(name: 'ActivationEpoch')
  int activationEpoch;

  @JsonKey(name: 'ReleaseEpoch')
  String releaseEpoch;

  Map3Node(this.map3Address,this.operatorAddress,this.nodeKeys,this.commission,this.description,this.creationHeight,this.age,this.status,this.pendingEpoch,this.activationEpoch,this.releaseEpoch,);

  factory Map3Node.fromJson(Map<String, dynamic> srcJson) => _$Map3NodeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Map3NodeToJson(this);

}

  
@JsonSerializable()
  class Commission extends Object {

  @JsonKey(name: 'Rate')
  String rate;

  @JsonKey(name: 'RateForNextPeriod')
  String rateForNextPeriod;

  @JsonKey(name: 'UpdateHeight')
  int updateHeight;

  Commission(this.rate,this.rateForNextPeriod,this.updateHeight,);

  factory Commission.fromJson(Map<String, dynamic> srcJson) => _$CommissionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommissionToJson(this);

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
  class Microdelegations extends Object {

  @JsonKey(name: 'DelegatorAddress')
  String delegatorAddress;

  @JsonKey(name: 'Amount')
  num amount;

  @JsonKey(name: 'Reward')
  int reward;

  @JsonKey(name: 'PendingDelegation')
  PendingDelegation pendingDelegation;

  @JsonKey(name: 'Undelegation')
  Undelegation undelegation;

  @JsonKey(name: 'Renewal')
  Renewal renewal;

  Microdelegations(this.delegatorAddress,this.amount,this.reward,this.pendingDelegation,this.undelegation,this.renewal,);

  factory Microdelegations.fromJson(Map<String, dynamic> srcJson) => _$MicrodelegationsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MicrodelegationsToJson(this);

}

  
@JsonSerializable()
  class PendingDelegation extends Object {

  @JsonKey(name: 'Amount')
  num amount;

  @JsonKey(name: 'UnlockedEpoch')
  String unlockedEpoch;

  PendingDelegation(this.amount,this.unlockedEpoch,);

  factory PendingDelegation.fromJson(Map<String, dynamic> srcJson) => _$PendingDelegationFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PendingDelegationToJson(this);

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
  class Renewal extends Object {

  @JsonKey(name: 'Status')
  int status;

  @JsonKey(name: 'UpdateHeight')
  int updateHeight;

  Renewal(this.status,this.updateHeight,);

  factory Renewal.fromJson(Map<String, dynamic> srcJson) => _$RenewalFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RenewalToJson(this);

}

  
