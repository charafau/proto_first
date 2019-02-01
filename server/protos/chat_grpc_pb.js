// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var protos_chat_pb = require('../protos/chat_pb.js');

function serialize_chat_HelloReply(arg) {
  if (!(arg instanceof protos_chat_pb.HelloReply)) {
    throw new Error('Expected argument of type chat.HelloReply');
  }
  return new Buffer(arg.serializeBinary());
}

function deserialize_chat_HelloReply(buffer_arg) {
  return protos_chat_pb.HelloReply.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_chat_HelloRequest(arg) {
  if (!(arg instanceof protos_chat_pb.HelloRequest)) {
    throw new Error('Expected argument of type chat.HelloRequest');
  }
  return new Buffer(arg.serializeBinary());
}

function deserialize_chat_HelloRequest(buffer_arg) {
  return protos_chat_pb.HelloRequest.deserializeBinary(new Uint8Array(buffer_arg));
}


var ChatterService = exports.ChatterService = {
  // Sends a greeting
  sayHello: {
    path: '/chat.Chatter/SayHello',
    requestStream: false,
    responseStream: false,
    requestType: protos_chat_pb.HelloRequest,
    responseType: protos_chat_pb.HelloReply,
    requestSerialize: serialize_chat_HelloRequest,
    requestDeserialize: deserialize_chat_HelloRequest,
    responseSerialize: serialize_chat_HelloReply,
    responseDeserialize: deserialize_chat_HelloReply,
  },
};

exports.ChatterClient = grpc.makeGenericClientConstructor(ChatterService);
