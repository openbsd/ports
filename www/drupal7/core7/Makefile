# $OpenBSD: Makefile,v 1.7 2018/05/22 08:18:08 sthen Exp $

COMMENT =	powerful content management system

DISTNAME =	drupal-7.59
PKGNAME =	drupal-7.59
REVISION =	0
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

do-install:
		mkdir -p ${PREFIX}/${DRUPAL_ROOT}
		# copy base distrib
		cp -R ${WRKDIST}/* ${PREFIX}/${DRUPAL_ROOT}
		# copy config file
		${SUBST_CMD} -m 444 -c ${FILESDIR}/drupal.conf \
			${PREFIX}/${DRUPAL_ROOT}/misc/drupal.conf
		chown -R ${DRUPAL_OWNER}.${DRUPAL_GROUP} ${PREFIX}/${DRUPAL_ROOT}
		install -d -g www -m 460 ${PREFIX}/${DRUPAL_ROOT}/sites/default/files
#		chmod 640 ${PREFIX}/${DRUPAL_ROOT}/sites/default/default.settings.php
#		chgrp www ${PREFIX}/${DRUPAL_ROOT}/sites/default/default.settings.php
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_MODS}
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_THEMES}

.include <bsd.port.mk>
SUBST_VARS +=	DRUPAL
