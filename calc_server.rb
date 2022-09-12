require 'grpc'
require_relative 'lib/calc_services_pb.rb'


class CalcServer < Example::Calc::Service
  def plus(input, _unused_call)
    puts input
    answer = input.fact1 + input.fact2
    return Example::Output.new(answer: answer)
  end
end

def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(CalcServer)
  s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
end

main
