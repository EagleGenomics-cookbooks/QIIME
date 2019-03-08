# # encoding: utf-8

# Inspec test for recipe QIIME::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

# Test the QIIME base installation
describe command('print_qiime_config.py -t') do
  its(:exit_status) { should eq 0 }
  end

# Test QIIME commands run succesfully
describe command('make_distance_boxplots.py -h') do
    its(:exit_status) { should eq 0 }
end

