# $OpenBSD: Makefile,v 1.13 2009/04/03 19:03:03 espie Exp $

COMMENT =	powerful content management system
 
DISTNAME =	drupal-5.16
PKGNAME=	${DISTNAME}
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
		cd ${PREFIX}/${DRUPAL_ROOT}/sites/default && \
			mv settings.php settings.php.sample
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_MODS}
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_THEMES}
		# give everything to www
		chown -R www.www ${PREFIX}/${DRUPAL_ROOT}

.include <bsd.port.mk>
