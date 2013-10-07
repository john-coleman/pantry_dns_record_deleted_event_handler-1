require 'spec_helper'
require_relative '../../pantry_dns_record_deleted_event_handler/pantry_dns_record_deleted_event_handler'

describe Wonga::Daemon::PantryDnsRecordDeletedEventHandler do
  let(:config) {
    {
      "pantry" => {
        "api_key" => "some_api_key",
        "request_timeout" => 10,
        "url" => "http://some.url"
      }
    }
  }
  let(:logger) { instance_double('Logger').as_null_object }

  subject { Wonga::Daemon::PantryDnsRecordDeletedEventHandler.new(config, logger) }

  it_behaves_like 'handler'

end

