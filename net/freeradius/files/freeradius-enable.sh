#!/bin/ksh

if [[ $1 != firstrun ]]; then
  echo This script is intended for calling by pkg_add during initial
  echo installation to setup the default configuration. It is not meant
  echo to be run manually.
  exit 1
fi

if [[ -e ${FREERADIUS_ETC}/attrs ]]; then
  echo You have a file indicating that you are trying to upgrade from
  echo FreeRADIUS 2.x to 3.x with existing configuration. You should move
  echo ${FREERADIUS_ETC} out of the way, reinstall, and rebuild configuration
  echo based on your old setup. For more information, see
  echo https://github.com/FreeRADIUS/freeradius-server/blob/v3.0.x/raddb/README.rst
  exit 1
fi

# if any of these exist, we are already configured and should bail out
if [[ -e ${FREERADIUS_ETC}/hints || -e ${FREERADIUS_ETC}/huntgroups || \
	-e ${FREERADIUS_ETC}/users || -e ${FREERADIUS_ETC}/certs/server.pem || \
	-d ${FREERADIUS_ETC}/mods-enabled || -d ${FREERADIUS_ETC}/sites-enabled ]]; then
  exit 0
fi

echo '===>  Copying initial configuration'
ln -s mods-config/preprocess/hints ${FREERADIUS_ETC}/hints
ln -s mods-config/preprocess/huntgroups ${FREERADIUS_ETC}/huntgroups
ln -s mods-config/files/authorize ${FREERADIUS_ETC}/users
cp -R ${TRUEPREFIX}/share/examples/freeradius/mods-enabled ${FREERADIUS_ETC}/
cp -R ${TRUEPREFIX}/share/examples/freeradius/sites-enabled ${FREERADIUS_ETC}/
echo '===>  Generating self-signed keys, this will take a few minutes'
su -l -s /bin/sh _freeradius -c 'umask 007; ${FREERADIUS_ETC}/certs/bootstrap > /dev/null'
echo '===>  Please note: to avoid conflicting with radiusd in base,'
echo "      for debug mode use the full path: ${TRUEPREFIX}/sbin/radiusd -X"
