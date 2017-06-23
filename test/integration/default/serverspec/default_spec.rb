require 'spec_helper'

describe 'QIIME::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  # Test the QIIME base installation
  describe command('print_qiime_config.py -t') do
    its(:exit_status) { should eq 0 }
  end

  # Test QIIME commands run succesfully
  describe command('make_distance_boxplots.py -h') do
    its(:exit_status) { should eq 0 }
  end
end
