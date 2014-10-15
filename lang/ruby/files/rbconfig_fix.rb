install = '/usr/bin/install INSTALL_ARGS'  
c = RbConfig::CONFIG 
m = RbConfig::MAKEFILE_CONFIG
if v = ENV['BSD_INSTALL_SCRIPT']
  m['INSTALL'] = c['INSTALL'] = v.sub('-m 755', '')
  m['INSTALL_SCRIPT'] = c['INSTALL_SCRIPT'] = v
else
  m['INSTALL'] = c['INSTALL'] = "#{install}"
  m['INSTALL_SCRIPT'] = c['INSTALL_SCRIPT'] = "#{install} -m 755"
end
if v = ENV['BSD_INSTALL_PROGRAM']
  m['INSTALL_PROGRAM'] = c['INSTALL_PROGRAM'] = v
else
  m['INSTALL_PROGRAM'] = c['INSTALL_PROGRAM'] = "#{install} -s -m 755"
end
if v = ENV['BSD_INSTALL_DATA']
  m['INSTALL_DATA'] = c['INSTALL_DATA'] = v
else
  m['INSTALL_DATA'] = c['INSTALL_DATA'] = "#{install} -m 644"
end
