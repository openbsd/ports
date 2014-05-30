# $OpenBSD: Makefile,v 1.12 2014/05/30 13:20:14 sthen Exp $

COMMENT =	powerful content management system
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME =	drupal-7.26
PKGNAME =	drupal-7.26
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}
REVISION =	0

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

do-install:
		mkdir -p ${PREFIX}/${DRUPAL_ROOT}
		# copy base distrib
		cp -R ${WRKDIST}/* ${PREFIX}/${DRUPAL_ROOT}
		# copy config file
		perl -p \
			-e 's@\$$\{DRUPAL_ROOT\}@${DRUPAL_ROOT}@g;' \
			-e 's@\$$\{DRUPAL\}@${DRUPAL}@g;' \
			<${FILESDIR}/drupal.conf \
			>${PREFIX}/${DRUPAL_ROOT}/misc/drupal.conf
		chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_ROOT}
		install -d -g www -m 460 ${PREFIX}/${DRUPAL_ROOT}/sites/default/files
#		chmod 640 ${PREFIX}/${DRUPAL_ROOT}/sites/default/default.settings.php
#		chgrp www ${PREFIX}/${DRUPAL_ROOT}/sites/default/default.settings.php
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_MODS}
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_THEMES}

.include <bsd.port.mk>
