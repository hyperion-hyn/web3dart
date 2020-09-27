part of 'package:web3dart/web3dart.dart';

class CreateAtlasNodeMessage implements IMessage {
  final String operatorAddress;
  final NodeDescription description;
  final BigInt rate;
  final BigInt maxRate;
  final BigInt maxChangeRate;
  final BigInt maxTotalDelegation;
  final String slotPubKey;
  final String slotKeySig;

  CreateAtlasNodeMessage({
    this.description,
    this.operatorAddress,
    this.maxChangeRate,
    this.maxRate,
    this.maxTotalDelegation,
    this.rate,
    this.slotKeySig,
    this.slotPubKey,
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
      [
        [rate ?? 0],
        [maxRate ?? 0],
        [maxChangeRate ?? 0],
      ],
      maxTotalDelegation ?? 0,
      [hexToBytes(slotPubKey ?? '')],
      hexToBytes(slotKeySig ?? ''),
    ]));
  }

  @override
  int get type => MessageType.typeCreateValidator;
}

class EditAtlasNodeMessage implements IMessage {
  final String validatorAddress;
  final String operatorAddress;
  final NodeDescription description;
  final BigInt commissionRate;
  final BigInt maxTotalDelegation;
  final String slotKeyToRemove;
  final String slotKeyToAdd;
  final String slotKeyToAddSig;
  final int eposStatus; //check NodeStatus

  EditAtlasNodeMessage({
    this.maxTotalDelegation,
    this.operatorAddress,
    this.description,
    this.commissionRate,
    this.eposStatus,
    this.slotKeyToAdd,
    this.slotKeyToAddSig,
    this.slotKeyToRemove,
    this.validatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(validatorAddress),
      hexToBytes(operatorAddress),
      [
        description.name ?? '',
        description.identity ?? '',
        description.website ?? '',
        description.securityContact ?? '',
        description.details ?? '',
      ], //Description
      [commissionRate ?? 0],
      maxTotalDelegation ?? 0,
      [hexToBytes(slotKeyToRemove ?? '')],
      [hexToBytes(slotKeyToAdd ?? '')],
      hexToBytes(slotKeyToAddSig ?? ''),
      eposStatus ?? 0,
    ]));
  }

  @override
  int get type => MessageType.typeEditValidator;
}

class ReDelegateAtlasMessage implements IMessage {
  final String delegatorAddress;
  final String validatorAddress;

  ReDelegateAtlasMessage({
    this.validatorAddress,
    this.delegatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(delegatorAddress),
      hexToBytes(validatorAddress),
    ]));
  }

  @override
  int get type => MessageType.typeReDelegate;
}

class UnReDelegateAtlasMessage implements IMessage {
  final String delegatorAddress;
  final String validatorAddress;

  UnReDelegateAtlasMessage({
    this.validatorAddress,
    this.delegatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(delegatorAddress),
      hexToBytes(validatorAddress),
    ]));
  }

  @override
  int get type => MessageType.typeUnReDelegate;
}

class CollectAtlasRewardMessage implements IMessage {
  final String delegatorAddress;
  final String validatorAddress;

  CollectAtlasRewardMessage({
    this.validatorAddress,
    this.delegatorAddress,
  });

  @override
  Uint8List toRlp() {
    return uint8ListFromList(rlp.encode([
      hexToBytes(delegatorAddress),
      hexToBytes(validatorAddress),
    ]));
  }

  @override
  int get type => MessageType.typeCollectReStakingReward;
}
