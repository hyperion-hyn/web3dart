part of 'package:web3dart/web3dart.dart';

abstract class IMessage {
  Uint8List toRlp();

  int get type;
}

class NodeDescription {
  final String name;
  final String identity;
  final String website;
  final String securityContact;
  final String details;

  NodeDescription({
    this.name,
    this.details,
    this.identity,
    this.securityContact,
    this.website,
  });
}

class MessageType {
  //atlas 转账
  static const typeNormal = 0;

  // validator
  static const typeCreateValidator = 1;
  static const typeEditValidator = 2;
  static const typeReDelegate = 3;
  static const typeUnReDelegate = 4;
  static const typeCollectReStakingReward = 5;

  // map3 node
  static const typeCreateMap3 = 6;
  static const typeEditMap3 = 7;
  static const typeTerminateMap3 = 8;
  static const typeMicroDelegate = 9;
  static const typeUnMicroDelegate = 10;
  static const typeCollectMicroStakingRewards = 11;
  static const typeRenewMap3 = 12;  //续约

  static const typeUnMicrostakingReturn = 101;  //到期不续期
  static const typeTerminateMap3Return = 102;  //节点终止后结算
}

class NodeStatus {
  static const nil = 0;
  static const active = 1;
  static const inActive = 2;
  static const banned = 3;
}
