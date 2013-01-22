module Mxm
  module Generators
    class SetupGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
     
      def generate_all
        invoke "mxm:assets", ["application"]
        invoke "mxm:layout", ["application"]
      end
    end
  end
end