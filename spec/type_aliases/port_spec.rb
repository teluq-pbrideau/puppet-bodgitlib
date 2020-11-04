require 'spec_helper'

describe 'Bodgitlib::Port' do
  it { is_expected.to allow_value(0) }
  it { is_expected.to allow_value(1023) }
  it { is_expected.to allow_value(1024) }
  it { is_expected.to allow_value(49_151) }
  it { is_expected.to allow_value(49_152) }
  it { is_expected.to allow_value(65_535) }
  it { is_expected.not_to allow_value(-1) }
  it { is_expected.not_to allow_value(65_536) }
  it { is_expected.not_to allow_value('invalid') }
end
