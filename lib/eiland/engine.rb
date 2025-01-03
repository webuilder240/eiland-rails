require "eiland/helpers"
require "rails/engine"

module Eiland
  class Engine < ::Rails::Engine
    isolate_namespace Eiland
    initializer "eiland_gem.action_controller" do
      ActiveSupport.on_load(:action_controller_base) do
        helper Eiland::Helpers
      end
    end
  end
end
