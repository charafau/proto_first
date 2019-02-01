import 'package:console/console.dart' as console;
// import 'package:api_dart/api_dart.dart';
import 'package:grpc/grpc.dart';

import 'package:api_dart/src/chat.pb.dart';
import 'package:api_dart/src/chat.pbgrpc.dart';

main(List<String> args) async {
  print('Hello world: ${console.calculate()}!');
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = new ChatterClient(channel);

  final name = args.isNotEmpty ? args[0] : 'world';

  try {
    final response = await stub.sayHello(HelloRequest()..name = name);
    print('Chatter client received: ${response.message}');
  } catch (e) {
    print('caught error: $e');
  }

  await channel.shutdown();
}
