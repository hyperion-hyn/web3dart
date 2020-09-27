import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:web3dart/web3dart.dart';

// a87ca98c541a5f2c600a643aa07e006c31adcbdb2254e7edba691bd03da06574 //0x45F8e154f17334A282ED3bc22fDC34975c456B6e
// da9a33fac4ea77328528fa347d496eee485669f07c62b023d3d832d9d70f4d68 //0xbdc8CAE8c6b269963aE615f4150A178b704131Ca
// 343ea1865903c74252f3f0ff7bd93f13b4910b93d17d2b4d965725e92f949a68 //0xa791650bDe11A8d26B94357A32DbA40A8b4CDa5d
// const String privateKey = 'a2fd51b96dc55aeb14b30d55a6b3121c7b9c599500c1beb92a389c3377adc86e';
const String privateKey = 'a87ca98c541a5f2c600a643aa07e006c31adcbdb2254e7edba691bd03da06574';
// const String rpcUrl = 'http://localhost:7545';
const String rpcUrl = 'http://18.181.179.155:8545';

void main() {
  test('update app api', () async {
    // print(BigInt.from(21000) * BigInt.from(10).pow(9) / BigInt.from(10).pow(18));

    // start a client we can use to send transactions
    final client = Web3Client(rpcUrl, Client());

    final credentials = await client.credentialsFromPrivateKey(privateKey);
    final address = await credentials.extractAddress();

    print(address.hexEip55);
    print((await client.getBalance(address)).getValueInUnit(EtherUnit.ether));

    await client.sendTransaction(
        credentials,
        Transaction(
          // to: EthereumAddress.fromHex('0xbdc8CAE8c6b269963aE615f4150A178b704131Ca'),
          to: EthereumAddress.fromHex('0x70247395aFFd13C2347aA8c748225f1bFeD2C32A'),
          // gasPrice: EtherAmount.inWei(BigInt.one),
          gasPrice: EtherAmount.inWei(BigInt.one * BigInt.from(10).pow(9)),
          maxGas: 21000,
          value: EtherAmount.fromUnitAndValue(EtherUnit.ether, 107),
          type: MessageType.typeNormal,
        ),
        chainId: 1);

    // await client.dispose();
  });
}
