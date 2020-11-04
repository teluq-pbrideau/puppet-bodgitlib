require 'spec_helper'

describe 'Bodgitlib::LDAP::Scope' do
  it { is_expected.to allow_value('one') }
  it { is_expected.to allow_value('base') }
  it { is_expected.to allow_value('sub') }
  it { is_expected.not_to allow_value(123) }
  it { is_expected.not_to allow_value('invalid') }
end
