require 'spec_helper'

describe 'Bodgitlib::LDAP::URI::Simple' do
  it { is_expected.to allow_value('ldap://') }
  it { is_expected.to allow_value('ldap:///') }
  it { is_expected.to allow_value('ldaps://') }
  it { is_expected.to allow_value('ldaps:///') }
  it { is_expected.to allow_value('ldapi://') }
  it { is_expected.to allow_value('ldapi:///') }
  it { is_expected.to allow_value('ldap://example.com') }
  it { is_expected.to allow_value('ldap://example.com:389') }
  it { is_expected.to allow_value('ldap://example.com:389/') }
  it { is_expected.to allow_value('ldap://localhost') }
  it { is_expected.to allow_value('ldap://localhost:389') }
  it { is_expected.to allow_value('ldap://localhost:389/') }
  it { is_expected.to allow_value('ldap://127.0.0.1') }
  it { is_expected.to allow_value('ldap://127.0.0.1:389') }
  it { is_expected.to allow_value('ldap://127.0.0.1:389/') }
  it { is_expected.to allow_value('ldap://[1:2:3:4:5:6:7:8]') }
  it { is_expected.to allow_value('ldap://[1:2:3:4:5:6:7:8]:389') }
  it { is_expected.to allow_value('ldap://[1:2:3:4:5:6:7:8]:389/') }
  it { is_expected.to allow_value('ldap://[::1]') }
  it { is_expected.to allow_value('ldap://[::1]:389') }
  it { is_expected.to allow_value('ldap://[::1]:389/') }
  it { is_expected.to allow_value('ldap://[1:2:3:4:5:6:1.2.3.4]') }
  it { is_expected.to allow_value('ldap://[1:2:3:4:5:6:1.2.3.4]:389') }
  it { is_expected.to allow_value('ldap://[1:2:3:4:5:6:1.2.3.4]:389/') }
  it { is_expected.to allow_value('ldap://[::1.2.3.4]') }
  it { is_expected.to allow_value('ldap://[::1.2.3.4]:389') }
  it { is_expected.to allow_value('ldap://[::1.2.3.4]:389/') }
  it { is_expected.to allow_value('ldapi://%2fexample%2fcom') }
  it { is_expected.to allow_value('ldapi://%2fexample%2fcom/') }
  it { is_expected.not_to allow_value(123) }
  it { is_expected.not_to allow_value('invalid') }
  it { is_expected.not_to allow_value('ldap://127.0.0.1:65536') }
  it { is_expected.not_to allow_value('ldapi://%2fexample%2fcom:389') }
end
