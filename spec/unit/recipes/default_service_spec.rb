#
# Cookbook Name:: rtorrent
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require "spec_helper"

describe "rtorrent::default_service" do

  context "When all attributes are default, on an unspecified platform" do

    let(:runner) { ChefSpec::Runner.new }
    let(:chef) { runner.converge(described_recipe) }

    it { chef } # This should not raise an error

    it { expect(chef).to create_template("/etc/init.d/rtorrent").with_mode("0755") }
    it { expect(chef).to start_service("rtorrent") }

  end
end
