module Ubiquo
  module Adapters
    module TableDefinition
      def sequence(table_name, field_name)
        integer field_name, :null => false 
        ActiveRecord::Base.connection.create_sequence("%s_%s" % [table_name, field_name])
      end
    end
  end
end