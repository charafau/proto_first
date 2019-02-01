var messages = require('./protos/chat_pb');
var services = require('./protos/chat_grpc_pb');

var grpc = require('grpc');

function sayHello(call, callback) {
    var reply = new messages.HelloReply();
    reply.setMessage('Hello ' + call.request.getName());
    callback(null, reply);
}

function main() {
    var server = new grpc.Server();

    server.addService(services.ChatterService, { sayHello: sayHello });
    server.bind('0.0.0.0:50051', grpc.ServerCredentials.createInsecure());

    server.start();

    console.log('Server started on port 50051');
}

main();