require 'grpc'
require_relative 'lib/calc_services_pb.rb'

def main(input1, input2)
  stub = Example::Calc::Stub.new('0.0.0.0:50051', :this_channel_is_insecure)
  output = stub.plus(Example::Input.new(fact1: input1, fact2: input2))
  p "答えは #{output.answer}"
end

p "計算式を書いてください"
input1 = gets.to_i
input2 = gets.to_i

main(input1, input2)
