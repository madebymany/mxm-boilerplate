module Mxm
  module Generators
    class AssetsGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
     
      def generate_stylesheets
        remove_file "app/assets/stylesheets/application.css"
        directory "stylesheets", "app/assets/stylesheets"
      end

      def generate_javascripts
        remove_file "app/assets/javascripts/application.js"
        directory "javascripts", "app/assets/javascripts"
      end

      protected

        def application_name
          if defined?(::Rails) && ::Rails.application
            ::Rails.application.class.name.split('::').first.downcase.parameterize
          else
            "intializer"
          end
        end
    end
  end
end