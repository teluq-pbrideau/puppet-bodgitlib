require 'spec_helper'

describe 'bodgitlib::enclose_ipv6' do
  it { is_expected.to run.with_params('192.0.2.1').and_return('192.0.2.1') }
  it { is_expected.to run.with_params('hostname.example.com').and_return('hostname.example.com') }
  it { is_expected.to run.with_params('1:2:3:4:5:6:7:8').and_return('[1:2:3:4:5:6:7:8]') }
end
