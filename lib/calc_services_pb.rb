# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: calc.proto for package 'example'

require 'grpc'
require './lib/calc_pb.rb'

module Example
  module Calc
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'example.Calc'

      rpc :Plus, ::Example::Input, ::Example::Output
    end

    Stub = Service.rpc_stub_class
  end
end
