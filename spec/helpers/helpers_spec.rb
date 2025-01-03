require "spec_helper"
require "eiland/helpers"
require "action_view"

RSpec.describe Eiland::Helpers, type: :helper do
  let(:dummy_class) { Class.new { include Eiland::Helpers } }
  let(:helper_instance) { dummy_class.new }

  describe "#vue_island" do
    it "render vue_island customElement" do
      result = helper_instance.vue_island("hello-world", init_props: { name: "World" }, loading: false)
      expect(result).to eq('<vue-island data-name="hello-world" data-init-props="{&quot;name&quot;:&quot;World&quot;}" data-loading="false"></vue-island>')
    end
  end

  describe "#vue2_island" do
    it "render vue2_island customElement" do
      result = helper_instance.vue2_island("hello-world", init_props: { name: "World" }, loading: false)
      expect(result).to eq('<vue2-island data-name="hello-world" data-init-props="{&quot;name&quot;:&quot;World&quot;}" data-loading="false"></vue2-island>')
    end
  end

  describe "#vue3_island" do
    it "render vue3_island customElement" do
      result = helper_instance.vue3_island("hello-world", init_props: { name: "World" }, loading: false)
      expect(result).to eq('<vue-island data-name="hello-world" data-init-props="{&quot;name&quot;:&quot;World&quot;}" data-loading="false"></vue-island>')
    end
  end

  describe "#preact_island" do
    it "render preact_island customElement" do
      result = helper_instance.preact_island("hello-world", init_props: { name: "World" }, loading: false)
      expect(result).to eq('<preact-island data-name="hello-world" data-init-props="{&quot;name&quot;:&quot;World&quot;}" data-loading="false"></preact-island>')
    end
  end
end
