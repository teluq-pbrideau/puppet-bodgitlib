require 'spec_helper'

describe 'Bodgitlib::Zone::NonRoot' do
  it { is_expected.to allow_value('com.') }
  it { is_expected.to allow_value('example.com.') }
  it { is_expected.to allow_value('a-hyphen.com.') }
  it { is_expected.not_to allow_value('invalid domain') }
  it { is_expected.not_to allow_value('.') }
  it { is_expected.not_to allow_value('example.com') }
  it { is_expected.not_to allow_value('-hyphen.com.') }
end
