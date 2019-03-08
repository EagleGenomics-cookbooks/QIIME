name 'QIIME'
maintainer 'Eagle Genomics Ltd'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures QIIME'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'
chef_version '>= 14.10'
supports 'ubuntu', '= 18.04'
source_url 'https://github.com/EagleGenomics-cookbooks/QIIME'
issues_url 'https://github.com/EagleGenomics-cookbooks/QIIME/issues'

depends 'magic_shell'
depends 'poise-python'
depends 'r'
