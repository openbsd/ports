# $OpenBSD: apache-module.port.mk,v 1.4 2007/06/21 06:11:11 simon Exp $
# simplify installation of apache modules
# written by Marc Espie 2007, public domain
#
# how to use:
# - define your module name as MODAPACHE_NAME (e.g., auth_kerb)
# - give a longer description as MODAPACHE_LONG_DESCRIPTION (for enable-script)
# - define MODAPACHE_LOCATION to be the directory into which the module is built
# (defaults to WRKBUILD)
# - or define MODAPACHE_FILE to the full name of the module file before installation.

# in your targets:
# - add ${MODAPACHE_CREATE_ENABLE_SCRIPT} somewhere in build
# - add ${MODAPACHE_INSTALL} to an install target.

# this will
# - install your module
# - create and install an axps wrapper

# subst_vars are provided:
# MODAPACHE_MODULE, MODAPACHE_ENABLE, MODAPACHE_FINAL

# a typical packing-list (minimal) will be:
# lib/${MODAPACHE_MODULE}
# @exec-update test -f ${MODAPACHE_FINAL} && cp -fp %D/%F ${MODAPACHE_FINAL}
# sbin/${MODAPACHE_ENABLE}
# @unexec-delete rm -f ${MODAPACHE_FINAL}

MODAPACHE_ENABLE = mod_${MODAPACHE_NAME}-enable
MODAPACHE_MODULE = mod_${MODAPACHE_NAME}.so
MODAPACHE_FINAL = /usr/lib/apache/${MODAPACHE_MODULE}
MODAPACHE_LOCATION ?= ${WRKBUILD}
MODAPACHE_FILE ?= ${MODAPACHE_LOCATION}/${MODAPACHE_MODULE}

MODAPACHE_CREATE_ENABLE_SCRIPT = \
	exec >${WRKBUILD}/${MODAPACHE_ENABLE}; \
	echo '\#! /bin/sh'; \
	echo 'MODULE=${TRUEPREFIX}/lib/${MODAPACHE_MODULE}'; \
	echo 'if [ `id -u` -ne 0 ]; then'; \
	echo '    echo "You must be root to run this script."'; \
	echo '    exit 0'; \
	echo 'fi'; \
	echo ; \
	echo 'if [ ! -f $${MODULE} ]; then'; \
	echo '    echo "Cannot find ${MODAPACHE_NAME} module ($${MODULE})"'; \
	echo '    exit 1'; \
	echo 'else'; \
	echo '    echo "Enabling ${MODAPACHE_LONG_DESCRIPTION} module..."'; \
	echo '    /usr/sbin/apxs -i -a -n ${MODAPACHE_NAME} $${MODULE}'; \
	echo 'fi'

MODAPACHE_INSTALL= \
	${INSTALL_DATA} ${MODAPACHE_FILE} ${PREFIX}/lib/${MODAPACHE_MODULE}; \
	${INSTALL_SCRIPT} ${WRKBUILD}/${MODAPACHE_ENABLE} ${PREFIX}/sbin

SUBST_VARS += MODAPACHE_MODULE MODAPACHE_ENABLE MODAPACHE_FINAL

