# $OpenBSD: Makefile,v 1.5 2009/07/26 12:20:07 espie Exp $

COMMENT =	powerful content management system
 
DISTNAME =	drupal-6.13
PKGNAME=	${DISTNAME}p1
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
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_MODS}
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_THEMES}
		# give everything to www
		chown -R www.www ${PREFIX}/${DRUPAL_ROOT}

.include <bsd.port.mk>
