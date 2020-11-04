require 'spec_helper'

describe 'Bodgitlib::Port' do
  it { is_expected.to allow_value(0) }
  it { is_expected.to allow_value(1023) }
  it { is_expected.to allow_value(1024) }
  it { is_expected.to allow_value(49151) }
  it { is_expected.to allow_value(49152) }
  it { is_expected.to allow_value(65535) }
  it { is_expected.not_to allow_value(-1) }
  it { is_expected.not_to allow_value(65536) }
  it { is_expected.not_to allow_value('invalid') }
end
