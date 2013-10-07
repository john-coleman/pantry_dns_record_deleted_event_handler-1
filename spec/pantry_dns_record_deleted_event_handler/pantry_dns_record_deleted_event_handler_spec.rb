require 'spec_helper'
require_relative '../../pantry_dns_record_deleted_event_handler/pantry_dns_record_deleted_event_handler'

describe Wonga::Daemon::PantryDnsRecordDeletedEventHandler do
  it_behaves_like 'handler'
  describe "#handle_message" do
    #add in unit test code for handle message here.
  end
end

