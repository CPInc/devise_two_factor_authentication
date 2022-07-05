module DeviseTwoFactorAuthentication
  class Engine < ::Rails::Engine
    ActiveSupport.on_load(:action_controller) do
      include DeviseTwoFactorAuthentication::Controllers::Helpers
    end
  end
end
