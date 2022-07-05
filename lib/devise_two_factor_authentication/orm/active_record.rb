require "active_record"

module Devise2Fa
  module Orm
    module ActiveRecord
      module Schema
        # include Devise2Fa::Schema
      end
    end
  end
end

ActiveRecord::ConnectionAdapters::Table.send :include, Devise2Fa::Orm::ActiveRecord::Schema
ActiveRecord::ConnectionAdapters::TableDefinition.send :include, Devise2Fa::Orm::ActiveRecord::Schema
