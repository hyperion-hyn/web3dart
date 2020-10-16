import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:web3dart/web3dart.dart';

const String rpcUrl = 'http://10.10.1.120:8090/v1/proxy';
const String privateKey2 = '0x80dd5684b4c5a7218cd97415ec652ed1f11b5b0734f46985b8ed15d3fe91fd33';
//0xbe4ce7db053c41376333b9bf32123e623fa07f5f6d9f3a15aae49f9ff651dc87   map3hash
//0x5c24A14B797A01BCc8eD74092c31794dDD80FB44   map3 user wallet address
void main() {
  test('getMap3InfoAddress',() async {
    final client = Web3Client(rpcUrl, Client());
    final map3Data = await client.getAllValidatorAddress();
    print(map3Data);
    //[{0xF71C36392dB38A796e2c0Dab8D87915847FE9fB8}, {0x7a871A723E02d08C646fbB6Bd0Ad586dbE8cAb63}, {0xe106d68990CB7153ff46F6428337C4d372729060}]
  });

  test('getMap3Info',() async {
    final client = Web3Client(rpcUrl, Client());
    final map3Data = await client.getValidatorInformation(EthereumAddress.fromHex('0xe106d68990CB7153ff46F6428337C4d372729060'));
    print(map3Data);
    // {"Map3Node":{"Map3Address":"0xe106d68990cb7153ff46f6428337c4d372729060","OperatorAddress":"0x5c24a14b797a01bcc8ed74092c31794ddd80fb44",
    // "NodeKeys":["6e3c64ff77d2487bb358f96eac51bd1898398e4725452c4e382014267a0cebadcfda4cab6b224ecdd1c700018d41ec85"],
    // "Commission":{"Rate":"0.100000000000000000","RateForNextPeriod":"0.100000000000000000","UpdateHeight":1131},
    // "Description":{"Name":"moo22","Identity":"moo_idx22","Website":"moo_website22","SecurityContact":"moo_contact22",
    // "Details":"moo_detail22"},"CreationHeight":1131,"Age":"0.000000000000000000","Status":1,"PendingEpoch":114,"ActivationEpoch":0,
    // "ReleaseEpoch":"0.000000000000000000"},"Microdelegations":[{"DelegatorAddress":"0x5c24a14b797a01bcc8ed74092c31794ddd80fb44",
    // "Amount":0,"Reward":0,"PendingDelegation":{"Amount":110000000000000000000000,"UnlockedEpoch":"121.000000000000000000"},
    // "Undelegation":{"Amount":0,"Epoch":0},"Renewal":{"Status":0,"UpdateHeight":0}}],
    // "RedelegationReference":"0x0000000000000000000000000000000000000000","AccumulatedReward":0,"TotalDelegation":0,
    // "TotalPendingDelegation":110000000000000000000000}
  });

}