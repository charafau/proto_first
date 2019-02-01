///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart' as $grpc;
import 'chat.pb.dart';
export 'chat.pb.dart';

class ChatterClient extends $grpc.Client {
  static final _$sayHello = new $grpc.ClientMethod<HelloRequest, HelloReply>(
      '/chat.Chatter/SayHello',
      (HelloRequest value) => value.writeToBuffer(),
      (List<int> value) => new HelloReply.fromBuffer(value));

  ChatterClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<HelloReply> sayHello(HelloRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sayHello, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class ChatterServiceBase extends $grpc.Service {
  String get $name => 'chat.Chatter';

  ChatterServiceBase() {
    $addMethod(new $grpc.ServiceMethod<HelloRequest, HelloReply>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        (List<int> value) => new HelloRequest.fromBuffer(value),
        (HelloReply value) => value.writeToBuffer()));
  }

  $async.Future<HelloReply> sayHello_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sayHello(call, await request);
  }

  $async.Future<HelloReply> sayHello(
      $grpc.ServiceCall call, HelloRequest request);
}
