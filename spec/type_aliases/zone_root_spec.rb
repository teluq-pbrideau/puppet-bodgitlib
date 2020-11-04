require 'spec_helper'

describe 'Bodgitlib::Zone::Root' do
  it { is_expected.to allow_value('.') }
  it { is_expected.not_to allow_value('invalid domain') }
  it { is_expected.not_to allow_value('example.com.') }
end
