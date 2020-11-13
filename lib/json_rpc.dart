library json_rpc;

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

class JsonRPC {
  final String url;
  final Client client;

  int _currentRequestId = 1;

  JsonRPC(this.url, this.client);

  /// Performs an RPC request, asking the server to execute the function with
  /// the given name and the associated parameters, which need to be encodable
  /// with the [json] class of dart:convert.
  ///
  /// When the request is successful, an [RPCResponse] with the request id and
  /// the data from the server will be returned. If not, an RPCError will be
  /// thrown. Other errors might be thrown if an IO-Error occurs.
  Future<RPCResponse> call(String function, [List<dynamic> params]) async {
    params ??= [];

    final requestPayload = {
      'jsonrpc': '2.0',
      'method': function,
      'params': params,
      'id': _currentRequestId++,
    };

    final response = await client.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(requestPayload),
    );

    final data = json.decode(response.body) as Map<String, dynamic>;
    final id = data['id'] as int;

    if (data.containsKey('code') && data['code'] != null && data['code'] != 200) {
      final code = data['code'] as int;
      final message = data['msg'] as String;
      final errorData = data['subMsg'];

      throw RPCError(code, message, errorData);
    }

    final result = data['result'];
    return RPCResponse(id, result, data['decodedResult']);
  }
}

/// Response from the server to an rpc request. Contains the id of the request
/// and the corresponding result as sent by the server.
class RPCResponse {
  final int id;
  final dynamic result;
  final dynamic resultDecoded;

  const RPCResponse(this.id, this.result, this.resultDecoded);
}

/// Exception thrown when an the server returns an error code to an rpc request.
class RPCError implements Exception {
  final int errorCode;
  final String message;
  final dynamic data;

  const RPCError(this.errorCode, this.message, this.data);

  @override
  String toString() {
    return 'RPCError: got code $errorCode with msg \"$message\" and data \"$data\".';
  }
}
