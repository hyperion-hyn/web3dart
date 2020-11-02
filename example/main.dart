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
// const String rpcUrl = 'http://10.10.1.120:8545';
//const String rpcUrl = 'http://10.10.1.120:8090/v1/proxy'; // moo
// const String rpcUrl = 'http://10.10.1.130:8545'; // js
const String rpcUrl = 'http://explore-test.hyn.space/v1/proxy';// 链 test

void main() {
  test('update app api', () async {
    // print(BigInt.from(21000) * BigInt.from(10).pow(9) / BigInt.from(10).pow(18));

    // start a client we can use to send transactions
    final client = Web3Client(rpcUrl, Client());

    final credentials = await client.credentialsFromPrivateKey(privateKey);
    final address = await credentials.extractAddress();

    print(address.hexEip55);
    print((await client.getBalance(address)).getValueInUnit(EtherUnit.ether));

    var amount = BigInt.from(110000) * BigInt.from(10).pow(18);
    var message = CreateMap3NodeMessage(
      amount: amount,
        // ConvertTokenUnit.decimalToWei(Decimal.parse('0.13'))
      commission: BigInt.from(10).pow(17), // 0.1   10%手续费
      description: NodeDescription(
          name: 'moo22',
          details: 'moo_detail22',
          identity: 'moo_idx22',
          securityContact: 'moo_contact22',
          website: 'moo_website22'),
      operatorAddress: address.hexEip55,
      nodePubKey: '6e3c64ff77d2487bb358f96eac51bd1898398e4725452c4e382014267a0cebadcfda4cab6b224ecdd1c700018d41ec85',
      nodeKeySig: 'f735759db3cfe8ce70cde354c825497a63d83aea75adf6194153ad1302d0a1dcab057ab1484b64692c11a6c5d7c8100a9777d1541712a02a1b479375e98cc13c2ef3a20369b472cba943d4e763cc451dca1b0d65a0ca2c66bb19fe8566adbb12',
    );
    print(message);

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
          type: message.type,
          message: message,
        ),
        chainId: 1);

    print(tx);*/
    // await client.dispose();
  });

  test('trans api', () async {
    // print(BigInt.from(21000) * BigInt.from(10).pow(9) / BigInt.from(10).pow(18));
     print("[j] test");
    // start a client we can use to send transactions
    final client = Web3Client(rpcUrl, Client());

    final credentials = await client.credentialsFromPrivateKey(privateKey);
    final address = await credentials.extractAddress();

    print(address.hexEip55);
    print((await client.getBalance(address)).getValueInUnit(EtherUnit.ether));

    /*var tx = await client.sendTransaction(
        credentials,
        Transaction(
          // to: EthereumAddress.fromHex('0xbdc8CAE8c6b269963aE615f4150A178b704131Ca'),
          to: EthereumAddress.fromHex('0x5c24A14B797A01BCc8eD74092c31794dDD80FB44'),
          // gasPrice: EtherAmount.inWei(BigInt.one),
          gasPrice: EtherAmount.inWei(BigInt.one * BigInt.from(10).pow(9)),
          maxGas: 21000,
          value: EtherAmount.fromUnitAndValue(EtherUnit.ether, 30000000),
          type: MessageType.typeNormal,
        ),
        chainId: 1);

    print(tx);*/
    // await client.dispose();
  });
}
