require 'spec_helper'

describe 'Bodgitlib::LDAP::DN' do
  it { is_expected.to allow_value('CN=Steve Kille,O=Isode Limited,C=GB') }
  it { is_expected.to allow_value('OU=Sales+CN=J. Smith,O=Widget Inc.,C=US') }
  it { is_expected.to allow_value('CN=L. Eagle,O=Sue\, Grabbit and Runn,C=GB') }
  it { is_expected.to allow_value('CN=Before\0DAfter,O=Test,C=GB') }
  it { is_expected.to allow_value('1.3.6.1.4.1.1466.0=#04024869,O=Test,C=GB') }
  it { is_expected.not_to allow_value(123) }
  it { is_expected.not_to allow_value('invalid') }
end
