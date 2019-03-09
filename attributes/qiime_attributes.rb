default['QIIME']['version'] = '1.9.1'
default['h5py']['version'] = '2.6.0'
default['emperor']['version'] = '0.9.51'

default['biom']['version'] = '0.3.12'
default['biom']['filename'] = 'biom_' + default['biom']['version'] + '.tar.gz'
default['biom']['url'] = 'https://cran.r-project.org/src/contrib/Archive/biom/' + default['biom']['filename']

# This is the version required by QIIME, available on ubuntu 18.04
default['python']['version'] = '2.7.16'

default['R']['packages'] = %w(ape optparse RColorBrewer randomForest vegan RJSONIO plyr BiocManager)
