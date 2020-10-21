
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:web3dart/web3dart.dart';

const String privateKey =
    'a87ca98c541a5f2c600a643aa07e006c31adcbdb2254e7edba691bd03da06574'; //0x45F8e154f17334A282ED3bc22fDC34975c456B6e
const String privateKey2 = '0x80dd5684b4c5a7218cd97415ec652ed1f11b5b0734f46985b8ed15d3fe91fd33';
// const String privateKey = 'da9a33fac4ea77328528fa347d496eee485669f07c62b023d3d832d9d70f4d68'; //0xbdc8CAE8c6b269963aE615f4150A178b704131Ca
// const String privateKey = '343ea1865903c74252f3f0ff7bd93f13b4910b93d17d2b4d965725e92f949a68'; //0xa791650bDe11A8d26B94357A32DbA40A8b4CDa5d
// const String privateKey = 'a2fd51b96dc55aeb14b30d55a6b3121c7b9c599500c1beb92a389c3377adc86e'; //0x76778e046D73a5B8ce3d03749cE6B1b3D6a12E36

// const String rpcUrl = 'http://localhost:7545';
// const String rpcUrl = 'http://18.181.179.155:8545';
 const String rpcUrl = 'http://10.10.1.130:8545';
//const String rpcUrl = 'http://10.10.1.120:8090/v1/proxy'; // moo

void main() {
  test('update app api', () async {
    // print(BigInt.from(21000) * BigInt.from(10).pow(9) / BigInt.from(10).pow(18));

    // start a client we can use to send transactions
    final client = Web3Client(rpcUrl, Client());

    final credentials = await client.credentialsFromPrivateKey(privateKey2);
    final address = await credentials.extractAddress();

    print(address.hexEip55);
    //print((await client.getBalance(address)).getValueInUnit(EtherUnit.ether));

    //[0xF71C36392dB38A796e2c0Dab8D87915847FE9fB8, 0x7a871A723E02d08C646fbB6Bd0Ad586dbE8cAb63, 0xe106d68990CB7153ff46F6428337C4d372729060]
    final map3AddressList = await client.getAllMap3NodeAddresses();
    print('map3AddressList: $map3AddressList');

    final firstItem = map3AddressList[1] as String;
    print('firstItem: $firstItem');

    final map3Address = EthereumAddress.fromHex(firstItem);
    final infoEntity = await client.getMap3NodeInformation(map3Address);
    final operatorAddress = infoEntity.map3Node.operatorAddress;
    print('OperatorAddress: $operatorAddress');

    final delegateAddress = EthereumAddress.fromHex(operatorAddress);
    final delegationEntity = await client.getMap3NodeDelegation(map3Address, delegateAddress);
    print('DelegatorAddress: ${delegationEntity.delegatorAddress}');

    final reward = await client.getAllMap3RewardByDelegatorAddress(delegateAddress);
    print('reward: $reward');

    /*
    var amount = BigInt.from(110000) * BigInt.from(10).pow(18);
    var message = CreateMap3NodeMessage(
      amount: amount,
        // ConvertTokenUnit.decimalToWei(Decimal.parse('0.13'))
      commission: BigInt.from(10).pow(17), // 0.1   10%手续费
      description: NodeDescription(
          name: 'moo',
          details: 'moo_detail',
          identity: 'moo_idx',
          securityContact: 'moo_contact',
          website: 'moo_website'),
      operatorAddress: address.hexEip55,
      nodePubKey: '5228b7f763038bb5b7638b624a56535a97b7e2cf6cba6e43d303d8919d7397fffd2eed7060bd29a13f5a9ab78994f614',
      nodeKeySig: 'eb88a3e92d7e6a8c1b356730cda4e6ef24dec89fd2d5279761c50e0f71c6597f06aec6c861c884ee5b3f311832a0f9026d3864b9c116294333301999737ff2a02331ee9bdde89e3963ba794ceaedd3bfbf39243405c1b2f99a52ccf5aca0f411',
    );
    print(message);
    */

    ////转账
    /*var tx = await client.sendTransaction(
        credentials,
        Transaction(
          // to: EthereumAddress.fromHex('0xbdc8CAE8c6b269963aE615f4150A178b704131Ca'),
          // to: EthereumAddress.fromHex('0x70247395aFFd13C2347aA8c748225f1bFeD2C32A'),
          // gasPrice: EtherAmount.inWei(BigInt.one),
          gasPrice: EtherAmount.inWei(BigInt.one * BigInt.from(10).pow(9)),
          maxGas: 600000,
          // value: EtherAmount.fromUnitAndValue(EtherUnit.ether, 107),
          // type: MessageType.typeNormal,
          message: message,
        ),
        chainId: 1);

    print(tx);*/
    // await client.dispose();
  });

  test('trans api', () async {
    // print(BigInt.from(21000) * BigInt.from(10).pow(9) / BigInt.from(10).pow(18));
    //print("[j] test");
    // start a client we can use to send transactions

    // final client = Web3Client(rpcUrl, Client());
    //
    // final credentials = await client.credentialsFromPrivateKey(privateKey);
    // final address = await credentials.extractAddress();
    //
    // print(address.hexEip55);
    // print((await client.getBalance(address)).getValueInUnit(EtherUnit.ether));

    /*var tx = await client.sendTransaction(
        credentials,
        Transaction(
          // to: EthereumAddress.fromHex('0xbdc8CAE8c6b269963aE615f4150A178b704131Ca'),
          to: EthereumAddress.fromHex('0x5c24A14B797A01BCc8eD74092c31794dDD80FB44'),
          // gasPrice: EtherAmount.inWei(BigInt.one),
          gasPrice: EtherAmount.inWei(BigInt.one * BigInt.from(10).pow(9)),
          maxGas: 21000,
          value: EtherAmount.fromUnitAndValue(EtherUnit.ether, 50000000),
          type: MessageType.typeNormal,
        ),
        chainId: 1);

    print(tx);*/
    // await client.dispose();
  });
}
