# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: rpc.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "anycable.ConnectionRequest" do
    optional :path, :string, 1
    map :headers, :string, :string, 2
  end
  add_message "anycable.ConnectionResponse" do
    optional :status, :enum, 1, "anycable.Status"
    optional :identifiers, :string, 2
  end
  add_message "anycable.CommandMessage" do
    optional :command, :string, 1
    optional :identifier, :string, 2
    optional :connection_identifiers, :string, 3
    optional :data, :string, 4
  end
  add_message "anycable.CommandResponse" do
    optional :status, :enum, 1, "anycable.Status"
    optional :disconnect, :bool, 2
    optional :stop_streams, :bool, 3
    optional :stream_from, :bool, 4
    optional :stream_id, :string, 5
  end
  add_enum "anycable.Status" do
    value :ERROR, 0
    value :SUCCESS, 1
  end
end

module Anycable
  ConnectionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("anycable.ConnectionRequest").msgclass
  ConnectionResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("anycable.ConnectionResponse").msgclass
  CommandMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("anycable.CommandMessage").msgclass
  CommandResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("anycable.CommandResponse").msgclass
  Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("anycable.Status").enummodule
end