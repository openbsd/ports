# $OpenBSD: Makefile,v 1.13 2010/11/15 09:05:41 stephan Exp $

COMMENT =	powerful content management system
 
DISTNAME =	drupal-6.19
REVISION =	0
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

RUN_DEPENDS = 	::www/php5/core \
	:php5-mysql-*|php5-mysqli-*|php5-pgsql-*:www/php5/extensions,-mysql \
		::www/php5/extensions,-gd \
		::www/php5/extensions,-mbstring
		
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
