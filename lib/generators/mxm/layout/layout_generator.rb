module Mxm
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
     
      def generate_layout
        remove_file "app/views/layouts/application.html.erb"
        directory "layouts", "app/views/layouts"
      end
    end
  end
end