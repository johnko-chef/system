name             'system'
maintainer       'John Ko'
maintainer_email 'git@johnko.ca'
license          'Apache 2.0'
description      'Manages system files'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1'

recipe           'system', 'Manages system files'

%w(freebsd).each do |os|
  supports os
end
