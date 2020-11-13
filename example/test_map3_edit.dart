
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:web3dart/web3dart.dart';

const String privateKey =
    'a87ca98c541a5f2c600a643aa07e006c31adcbdb2254e7edba691bd03da06574'; //0x45F8e154f17334A282ED3bc22fDC34975c456B6e
// const String privateKey2 = '0x80dd5684b4c5a7218cd97415ec652ed1f11b5b0734f46985b8ed15d3fe91fd33';
// const String privateKey = 'da9a33fac4ea77328528fa347d496eee485669f07c62b023d3d832d9d70f4d68'; //0xbdc8CAE8c6b269963aE615f4150A178b704131Ca
// const String privateKey = '343ea1865903c74252f3f0ff7bd93f13b4910b93d17d2b4d965725e92f949a68'; //0xa791650bDe11A8d26B94357A32DbA40A8b4CDa5d
// const String privateKey = 'a2fd51b96dc55aeb14b30d55a6b3121c7b9c599500c1beb92a389c3377adc86e'; //0x76778e046D73a5B8ce3d03749cE6B1b3D6a12E36
const String privateKey2 = 'e5d47ea9e92d62884d5205d96bc82ce81f468fedef9eab28432a485615e7497e';


// const String rpcUrl = 'http://localhost:7545';
// const String rpcUrl = 'http://18.181.179.155:8545';
//  const String rpcUrl = 'http://10.10.1.130:8545';
// const String rpcUrl = 'http://10.10.1.120:8090/v1/proxy'; // moo
const String rpcUrl = 'https://explore.hyn.space/v1/proxy';


void main() {
  test('Edit Map3 Test', () async {


    final client = Web3Client(rpcUrl, Client());

    final credentials = await client.credentialsFromPrivateKey(privateKey2);
    final address = await credentials.extractAddress();

    print(address.hexEip55);
    print((await client.getBalance(address)).getValueInUnit(EtherUnit.ether));

    /*
    //[0xF71C36392dB38A796e2c0Dab8D87915847FE9fB8, 0x7a871A723E02d08C646fbB6Bd0Ad586dbE8cAb63, 0xe106d68990CB7153ff46F6428337C4d372729060]

    final map3AddressList = await client.getAllMap3NodeAddresses();
    print('map3AddressList: $map3AddressList');

    final firstItem = map3AddressList[1] as String;
    print('firstItem: $firstItem');

    final map3Address = EthereumAddress.fromHex(firstItem);
    final infoEntity = await client.getMap3NodeInformation(map3Address);
    final operatorAddress = infoEntity.map3Node.operatorAddress;
    print('OperatorAddress: $operatorAddress');

    var operatorAddress1 = "0x5c24A14B797A01BCc8eD74092c31794dDD80FB44";
    final delegateAddress = EthereumAddress.fromHex(operatorAddress1);
    // final delegationEntity = await client.getMap3NodeDelegation(map3Address, delegateAddress);
    // print('DelegatorAddress: ${delegationEntity.delegatorAddress}');

    final reward = await client.getAllMap3RewardByDelegatorAddress(delegateAddress);
    print('reward: $reward');
    var parse = '0';
    if (reward.isNotEmpty) {
      parse = reward?.values?.last as String;
    }

    final value = ConvertTokenUnit.weiToEther(
        weiBigInt: BigInt.parse(parse));
    print('value: $value');


    var map3Address1 = EthereumAddress.fromHex("0xdf3d06f8af7929dcd39455a31c22696ca47b4c96");
    var walletAddress1 = EthereumAddress.fromHex("0x5c24a14b797a01bcc8ed74092c31794ddd80fb44");
    print("map3Address1:$map3Address1, walletAddress1:$walletAddress1");
   */

  });

}
