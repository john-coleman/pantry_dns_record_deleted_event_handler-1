module Wonga
  module Daemon
    class PantryDnsRecordDeletedEventHandler
      def initialize(config)
        @config = config
      end

      def handle_message(message)
        #Put message handling code in here
      end
    end
  end
end