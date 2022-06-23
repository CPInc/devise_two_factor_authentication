module Devise2Fa
  class Engine < ::Rails::Engine
    ActiveSupport.on_load(:action_controller) do
      include Devise2Fa::Controllers::Helpers
    end
  end
end
