# $OpenBSD: Makefile,v 1.18 2011/07/09 00:14:45 robert Exp $

COMMENT =	powerful content management system

DISTNAME =	drupal-6.22
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}
REVISION =	1

RUN_DEPENDS=	php-mysql-*|php-mysqli-*|php-pgsql-*:lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-gd

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
		install -d -o www ${PREFIX}/${DRUPAL_ROOT}/files
		chmod 640 ${PREFIX}/${DRUPAL_ROOT}/sites/default/default.settings.php
		chgrp www ${PREFIX}/${DRUPAL_ROOT}/sites/default/default.settings.php
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_MODS}
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_THEMES}

.include <bsd.port.mk>
