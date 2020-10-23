

class TokenUnit {
  static const WEI = 1;
  static const K_WEI = 1000;
  static const M_WEI = 1000000;
  static const G_WEI = 1000000000;
  static const T_WEI = 1000000000000;
  static const P_WEI = 1000000000000000;
  static const ETHER = 1000000000000000000;
}

class EthereumConst {
  static const LOW_SPEED = 25 * TokenUnit.G_WEI;
  static const FAST_SPEED = 40 * TokenUnit.G_WEI;
  static const SUPER_FAST_SPEED = 70 * TokenUnit.G_WEI;

  static const int ETH_TRANSFER_GAS_LIMIT = 21000;
  static const int ERC20_TRANSFER_GAS_LIMIT = 65000;

  static const int ERC20_APPROVE_GAS_LIMIT = 50000;

  static const int CREATE_MAP3_NODE_GAS_LIMIT = 560000;
  static const int DELEGATE_MAP3_NODE_GAS_LIMIT = 700000;

  static const int COLLECT_MAP3_NODE_CREATOR_GAS_LIMIT_81 = 2800000;
  static const int COLLECT_MAP3_NODE_CREATOR_GAS_LIMIT_61 = 2100000;
  static const int COLLECT_MAP3_NODE_CREATOR_GAS_LIMIT_41 = 1500000;
  static const int COLLECT_MAP3_NODE_CREATOR_GAS_LIMIT_21 = 800000;

  static const int COLLECT_MAP3_NODE_CREATOR_GAS_LIMIT = 800000;

  static const int COLLECT_MAP3_NODE_PARTNER_GAS_LIMIT = 80000;
  static const int COLLECT_HALF_MAP3_NODE_GAS_LIMIT = 150000;
}

class BitcoinConst {
  static const BTC_LOW_SPEED = 15;
  static const BTC_FAST_SPEED = 30;
  static const BTC_SUPER_FAST_SPEED = 60;
  static const BTC_RAWTX_SIZE = 225;
}

class WalletError {
  static const UNKNOWN_ERROR = "0";
  static const PASSWORD_WRONG = "1";
  static const PARAMETERS_WRONG = "2";
}

enum EthereumNetType {
  main,
  ropsten,
  rinkeby,
  local,
}

enum BitcoinNetType {
  main,
  local,
}

EthereumNetType getEthereumNetTypeFromString(String type) {
  for (var value in EthereumNetType.values) {
    if (value.toString() == type) {
      return value;
    }
  }
  return EthereumNetType.main;
}


