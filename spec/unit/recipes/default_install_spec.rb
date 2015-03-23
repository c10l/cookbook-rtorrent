#
# Cookbook Name:: rtorrent
# Spec:: default_install
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require "spec_helper"

describe "rtorrent::default_install" do

  context "When all attributes are default, on an unspecified platform" do

    let(:runner) { ChefSpec::Runner.new }
    let(:chef) { runner.converge(described_recipe) }

    it { chef } # This should not raise an error
    it do
      expect(chef).to create_user("rtorrent").with(
        :home => "/var/lib/rtorrent",
        :shell => "/usr/sbin/nologin",
        :system => true,
      )
    end

    it { expect(chef).to upgrade_package("rtorrent") }
    it { expect(chef).to upgrade_package("tmux") }

  end
end
