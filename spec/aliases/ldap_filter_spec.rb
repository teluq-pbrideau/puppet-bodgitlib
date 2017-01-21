require 'spec_helper'

if Puppet.version.to_f >= 4.4
  describe 'test::ldap::filter', type: :class do
    describe 'accepts an LDAP filter' do
      [
        '(cn=Babs Jensen)',
        '(!(cn=Tim Howes))',
        '(&(objectClass=Person)(|(sn=Jensen)(cn=Babs J*)))',
        '(o=univ*of*mich*)',
        '(cn:1.2.3.4.5:=Fred Flintstone)',
        '(sn:dn:2.4.6.8.10:=Barney Rubble)',
        '(o:dn:=Ace Industry)',
        '(:dn:2.4.6.8.10:=Dino)',
        '(o=Parens R Us \28for all your parenthetical needs\29)',
        '(cn=*\2A*)',
        '(filename=C:\5cMyFile)',
        '(bin=\00\00\00\04)',
        '(sn=Lu\c4\8di\c4\87)',
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
