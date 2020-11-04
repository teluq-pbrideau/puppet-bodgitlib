require 'spec_helper'

describe 'Bodgitlib::Netmask' do
  it { is_expected.to allow_value('255.255.255.255') }
  it { is_expected.to allow_value('255.255.255.128') }
  it { is_expected.to allow_value('255.255.128.0') }
  it { is_expected.to allow_value('255.128.0.0') }
  it { is_expected.to allow_value('128.0.0.0') }
  it { is_expected.to allow_value('0.0.0.0') }
  it { is_expected.not_to allow_value(123) }
  it { is_expected.not_to allow_value('invalid') }
end
