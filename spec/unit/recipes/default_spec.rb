#
# Cookbook Name:: rtorrent
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require "spec_helper"

describe "rtorrent::default" do

  context "When all attributes are default, on an unspecified platform" do

    let(:runner) { ChefSpec::SoloRunner.new }
    let(:chef) { runner.converge(described_recipe) }

    it { chef } # This should not raise an error

    it { expect(chef).to include_recipe("rtorrent::default_install") }
    it { expect(chef).to include_recipe("rtorrent::default_config") }
    it { expect(chef).to include_recipe("rtorrent::default_service") }

  end
end
