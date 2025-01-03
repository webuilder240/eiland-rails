require "eiland/helpers"

module Eiland
  class Engine < ::Rails::Engine
    initializer "eiland_gem.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        include Eiland::Helpers
      end
    end
  end
end
