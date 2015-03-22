require "spec_helper"

describe "rtorrent::default" do

  describe user("rtorrent") do
    it { should exist }
    it { should have_home_directory "/var/lib/rtorrent" }
    it { should have_login_shell "/bin/false" }
  end

  describe package("rtorrent") do
    it { should be_installed }
  end

  describe file("/var/lib/rtorrent/.rtorrent.rc") do
    it { should be_file }
  end

end
