# # encoding: utf-8

# Inspec test for recipe tac_plus::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe yum.repo('nux-misc') do
  it { should exist }
  it { should be_enabled }
end

describe package('tac_plus') do
  it { should be_installed }
end

describe file('/etc/tac_plus.conf') do
  it { should be_file }
end
