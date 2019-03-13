# # encoding: utf-8

# Inspec test for recipe QIIME::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# Test the QIIME base installation
describe command('print_qiime_config.py --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match 'Version: print_qiime_config.py 1.9.1' }
end

describe command('validate_mapping_file.py --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match 'Version: validate_mapping_file.py 1.9.1' }
end

# Test QIIME commands run succesfully
describe command('make_distance_boxplots.py -h') do
  its(:exit_status) { should eq 0 }
end
