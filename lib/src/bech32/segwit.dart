part of 'package:web3dart/web3dart.dart';

/// An instance of the default implementation of the SegwitCodec
const SegwitCodec segwit = SegwitCodec();

/// A codec which converts a Segwit class to its String representation and vice versa.
class SegwitCodec extends Codec<Segwit, String> {
  const SegwitCodec();

  SegwitDecoder get decoder => SegwitDecoder();

  SegwitEncoder get encoder => SegwitEncoder();

  String encode(Segwit data) {
    return SegwitEncoder().convert(data);
  }

  Segwit decode(String data) {
    return SegwitDecoder().convert(data);
  }
}

/// This class converts a Segwit class instance to a String.
class SegwitEncoder extends Converter<Segwit, String> with SegwitValidations {
  String convert(Segwit input) {
    var version = input.version;
    var program = input.program;

    if (isInvalidVersion(version)) {
      throw InvalidWitnessVersion(version);
    }

    if (isTooShortProgram(program)) {
      throw InvalidProgramLength("too short");
    }

    if (isTooLongProgram(program)) {
      throw InvalidProgramLength("too long");
    }

    if (isWrongVersion0Program(version, program)) {
      throw InvalidProgramLength("version $version invalid with length ${program.length}");
    }

    var data = _convertBits(program, 8, 5, true);

    return bech32.encode(Bech32(input.hrp, data));
  }
}

/// This class converts a String to a Segwit class instance.
class SegwitDecoder extends Converter<String, Segwit> with SegwitValidations {
  Segwit convert(String input) {
    Bech32 decoded = bech32.decode(input);

    if (isInvalidHrp(decoded.hrp)) {
      throw InvalidHrp();
    }

    if (isEmptyProgram(decoded.data)) {
      throw InvalidProgramLength("empty");
    }

    var version = decoded.data[0];

    if (isInvalidVersion(version)) {
      throw InvalidWitnessVersion(version);
    }

    List<int> program = _convertBits(decoded.data, 5, 8, false);

    if (isTooShortProgram(program)) {
      throw InvalidProgramLength("too short");
    }

    if (isTooLongProgram(program)) {
      throw InvalidProgramLength("too long");
    }

    if (isWrongVersion0Program(version, program)) {
      throw InvalidProgramLength("version $version invalid with length ${program.length}");
    }

    return Segwit(decoded.hrp, version, program);
  }
}

/// Generic validations for a Segwit class.
class SegwitValidations {
  bool isInvalidHrp(String hrp) {
    return hrp != 'bc' && hrp != 'tb' && hrp != 'hyn' && hrp != 'thyn';
  }

  bool isEmptyProgram(List<int> data) {
    return data.length == 0;
  }

  bool isInvalidVersion(int version) {
    return version > 16;
  }

  bool isWrongVersion0Program(int version, List<int> program) {
    return version == 0 && (program.length != 20 && program.length != 32);
  }

  bool isTooLongProgram(List<int> program) {
    return program.length > 40;
  }

  bool isTooShortProgram(List<int> program) {
    return program.length < 2;
  }
}

/// A representation of a Segwit Bech32 address. This class can be used to obtain the `scriptPubKey`.
class Segwit {
  Segwit(this.hrp, this.version, this.program);

  final String hrp;
  final int version;
  final List<int> program;

  String get scriptPubKey {
    var v = version == 0 ? version : version + 0x50;
    return ([v, program.length] + program).map((c) => c.toRadixString(16).padLeft(2, '0')).toList().join('');
  }
}

List<int> _convertBits(List<int> data, int from, int to, bool pad) {
  var acc = 0;
  var bits = 0;
  List<int> result = [];
  var maxv = (1 << to) - 1;

  data.forEach((v) {
    if (v < 0 || (v >> from) != 0) {
      throw Exception();
    }
    acc = (acc << from) | v;
    bits += from;
    while (bits >= to) {
      bits -= to;
      result.add((acc >> bits) & maxv);
    }
  });

  if (pad) {
    if (bits > 0) {
      result.add((acc << (to - bits)) & maxv);
    }
  } else if (bits >= from) {
    throw InvalidPadding("illegal zero padding");
  } else if (((acc << (to - bits)) & maxv) != 0) {
    throw InvalidPadding("non zero");
  }

  return result;
}
