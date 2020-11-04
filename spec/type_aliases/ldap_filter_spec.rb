require 'spec_helper'

describe 'Bodgitlib::LDAP::Filter' do
  it { is_expected.to allow_value('(cn=Babs Jensen)') }
  it { is_expected.to allow_value('(!(cn=Tim Howes))') }
  it { is_expected.to allow_value('(&(objectClass=Person)(|(sn=Jensen)(cn=Babs J*)))') }
  it { is_expected.to allow_value('(o=univ*of*mich*)') }
  it { is_expected.to allow_value('(seeAlso=)') }
  it { is_expected.to allow_value('(cn:caseExactMatch:=Fred Flintstone)') }
  it { is_expected.to allow_value('(cn:=Betty Rubble)') }
  it { is_expected.to allow_value('(sn:dn:2.4.6.8.10:=Barney Rubble)') }
  it { is_expected.to allow_value('(o:dn:=Ace Industry)') }
  it { is_expected.to allow_value('(:1.2.3:=Wilma Flintstone)') }
  it { is_expected.to allow_value('(:DN:2.4.6.8.10:=Dino)') }
  it { is_expected.to allow_value('(o=Parens R Us \28for all your parenthetical needs\29)') }
  it { is_expected.to allow_value('(cn=*\2A*)') }
  it { is_expected.to allow_value('(filename=C:\5cMyFile)') }
  it { is_expected.to allow_value('(bin=\00\00\00\04)') }
  it { is_expected.to allow_value('(sn=Lu\c4\8di\c4\87)') }
  it { is_expected.to allow_value('(1.3.6.1.4.1.1466.0=\04\02\48\69)') }
  it { is_expected.to allow_value('(&(sAMAccountName=%u)(!(memberOf=cn=groupname,ou=User Security Groups,ou=Users,dc=my,dc=example,dc=com)))') }
  it { is_expected.not_to allow_value(123) }
  it { is_expected.not_to allow_value('invalid') }
end
