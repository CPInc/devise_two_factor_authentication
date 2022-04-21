module ActionDispatch::Routing
  class Mapper
    protected

      def devise_two_factor_authentication(mapping, controllers)
        resource :two_factor_authentication, :only => [:show, :update, :resend_code], :path => mapping.path_names[:two_factor_authentication], :controller => controllers[:two_factor_authentication] do
          collection { get resend_code_path(mapping), as: "resend_code" }
        end
      end

      def resend_code_path(mapping)
        Devise.mappings[resource_name(mapping)].path_names[:two_factor_authentication_resend_code] || "resend_code"
      end

      def resource_name(mapping)
        mapping.class_name.underscore.to_sym
      end
  end
end
