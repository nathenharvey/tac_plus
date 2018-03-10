describe ini('/etc/tac_plus.conf') do
  its('key') { should_not be_nil }
end

