part of 'package:web3dart/web3dart.dart';

class CreateMap3NodeMessage implements IMessage {
  final String operatorAddress;
  final NodeDescription description;
  final BigInt commission; // 佣金
  final String nodePubKey;
  final String nodeKeySig;
  final BigInt amount;

  CreateMap3NodeMessage({
    this.amount,
    this.commission,
    this.description,
    this.nodeKeySig,
    this.nodePubKey,
    this.operatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(operatorAddress), //OperatorAddress
      [
        description.name ?? '',
        description.identity ?? '',
        description.website ?? '',
        description.securityContact ?? '',
        description.details ?? '',
      ], //Description
      [commission ?? 0], //Commission
      [hexToBytes(nodePubKey ?? '')],
      hexToBytes(nodeKeySig ?? ''),
      amount ?? 0,
    ]));
  }

  @override
  int get type => MessageType.typeCreateMap3;
}

class EditMap3NodeMessage implements IMessage {
  final String map3NodeAddress;
  final String operatorAddress;
  final NodeDescription description;
  final String nodeKeyToRemove;
  final String nodeKeyToAdd;
  final String nodeKeyToAddSig;

  EditMap3NodeMessage({
    this.operatorAddress,
    this.description,
    this.map3NodeAddress,
    this.nodeKeyToAdd,
    this.nodeKeyToAddSig,
    this.nodeKeyToRemove,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(map3NodeAddress),
      hexToBytes(operatorAddress),
      [
        description.name ?? '',
        description.identity ?? '',
        description.website ?? '',
        description.securityContact ?? '',
        description.details ?? '',
      ], //Description
      [hexToBytes(nodeKeyToRemove ?? '')],
      [hexToBytes(nodeKeyToAdd ?? '')],
      hexToBytes(nodeKeyToAddSig ?? ''),
    ]));
  }

  @override
  int get type => MessageType.typeEditMap3;
}

class TerminateMap3NodeMessage implements IMessage {
  final String map3NodeAddress;
  final String operatorAddress;

  TerminateMap3NodeMessage({
    this.map3NodeAddress,
    this.operatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(map3NodeAddress),
      hexToBytes(operatorAddress),
    ]));
  }

  @override
  int get type => MessageType.typeTerminateMap3;
}

class MicroDelegateMessage implements IMessage {
  final String delegatorAddress;
  final String map3NodeAddress;
  final BigInt amount;

  MicroDelegateMessage({
    this.map3NodeAddress,
    this.amount,
    this.delegatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(delegatorAddress),
      hexToBytes(map3NodeAddress),
      amount ?? 0,
    ]));
  }

  @override
  int get type => MessageType.typeMicroDelegate;
}

class UnMicroDelegateMessage implements IMessage {
  final String delegatorAddress;
  final String map3NodeAddress;
  final BigInt amount;

  UnMicroDelegateMessage({
    this.amount,
    this.map3NodeAddress,
    this.delegatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(delegatorAddress),
      hexToBytes(map3NodeAddress),
      amount ?? 0,
    ]));
  }

  @override
  int get type => MessageType.typeUnMicroDelegate;
}

class CollectMicroRewardsMessage implements IMessage {
  final String delegatorAddress;

  CollectMicroRewardsMessage({
    this.delegatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(delegatorAddress),
    ]));
  }

  @override
  int get type => MessageType.typeCollectMicroStakingRewards;
}

class RenewMap3NodeMessage implements IMessage {
  final String map3NodeAddress;
  final String delegatorAddress;
  final bool isRenew;
  final BigInt newCommissionRate;

  RenewMap3NodeMessage({
    this.delegatorAddress,
    this.map3NodeAddress,
    this.isRenew,
    this.newCommissionRate,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(map3NodeAddress),
      hexToBytes(delegatorAddress),
      if (isRenew) 0 else 1,
      [newCommissionRate ?? 0]
    ]));
  }

  @override
  int get type => MessageType.typeRenewMap3;
}
