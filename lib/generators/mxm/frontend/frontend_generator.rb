module Mxm
  module Generators
    class FrontendGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_frontend
        copy_file ".bowerrc", ".bowerrc"
        copy_file "component.json", "component.json"
        append_to_file ".gitignore", "\n/node_modules"
        append_to_file ".gitignore", "\n/app/assets/components"
      end
    end
  end
end

