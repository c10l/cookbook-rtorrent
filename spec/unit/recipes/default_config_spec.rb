#
# Cookbook Name:: rtorrent
# Spec:: default_config
#
# Copyright (c) 2015 Cassiano Leal, Apache License v2.

require "spec_helper"

describe "rtorrent::default_config" do

  context "When all attributes are default, on an unspecified platform" do

    let(:runner) { ChefSpec::SoloRunner.new }
    let(:chef) { runner.converge(described_recipe) }

    it { chef } # This should not raise an error

    it { expect(chef).to create_directory("/var/lib/rtorrent/.sessions") }

    rc_file = "/var/lib/rtorrent/.rtorrent.rc"
    it { expect(chef).to create_template(rc_file) }
    it { expect(chef).to render_file(rc_file).with_content( "Managed by Chef" ) }

  end
end
