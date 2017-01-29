require 'spec_helper'

if Puppet.version.to_f >= 4.4
  describe 'test::ldap::scope', type: :class do
    describe 'accepts an LDAP scope' do
      [
        'one',
        'base',
        'sub',
      ].each do |value|
        describe value.inspect do
          let(:params) {{ value: value }}
          it { is_expected.to compile }
        end
      end
    end
    describe 'rejects other values' do
      [
        123,
        'invalid',
      ].each do |value|
        describe value.inspect do
          let(:params) {{ value: value }}
          it { is_expected.to compile.and_raise_error(/parameter 'value' /) }
        end
      end
    end
  end
end
