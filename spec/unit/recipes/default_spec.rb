#
# Cookbook Name:: rtorrent
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'rtorrent::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:runner) { ChefSpec::Runner.new }
    let(:chef) { runner.converge(described_recipe) }

    it { chef } # This should not raise an error
    it do
      expect(chef).to create_user('rtorrent').with(
        :home => '/var/lib/rtorrent',
        :shell => '/bin/false',
        :system => true,
      )
    end

    it { expect(chef).to upgrade_package('rtorrent') }
    it { expect(chef).to upgrade_package('tmux') }

    rc_file = '/var/lib/rtorrent/.rtorrent.rc'
    it { expect(chef).to create_template(rc_file) }
    it { expect(chef).to render_file(rc_file).with_content( 'Managed by Chef' ) }

  end
end