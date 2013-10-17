module Wonga
  module Daemon
    class PantryDnsRecordDeletedEventHandler
      def initialize(api_client, logger)
        @api_client = api_client
        @logger = logger
      end

      def handle_message(message)
        @logger.info "Updating dns record deleted status for Request:#{message['id']}, Name:#{message['node']}}"
        @api_client.send_put_request(
          "/api/ec2_instances/#{message['id']}",
          { 
            id: message['id'],
            joined: false
          }
        )
        @logger.info "Updating dns record deleted joined status for Request:#{message['id']} succeeded"
      end
    end
  end
end
