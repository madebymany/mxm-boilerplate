module Mxm
  module Generators
    class SetupGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_all
        invoke "mxm:assets", ["application"]
        invoke "mxm:layout", ["application"]

        insert_into_file "config/environments/development.rb", :after => "Application.configure do\n" do
          [
            "  config.assets.debug = true",
            "  config.sass.debug_info = true",
            "  config.sass.line_comments = false # source maps don't get output if this is true"
          ].join("\n")
        end

      end
    end
  end
end