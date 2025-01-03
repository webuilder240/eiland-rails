require "action_view"
require "bigdecimal"
require "json"

module Eiland
  module Helpers
    include ActionView::Helpers::TagHelper

    def vue_island(name, init_props: {}, loading: true)
      tag.vue_island(data: { name: name, init_props: init_props, loading: loading })
    end

    def vue2_island(name, init_props: {}, loading: true)
      tag.vue2_island(data: { name: name, init_props: init_props, loading: loading })
    end

    def vue3_island(name, init_props: {}, loading: true)
      vue_island(name, init_props: init_props, loading: loading)
    end

    def preact_island(name, init_props: {}, loading: true)
      tag.preact_island(data: { name: name, init_props: init_props, loading: loading })
    end
  end
end
