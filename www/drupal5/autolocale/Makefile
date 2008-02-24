# $OpenBSD: Makefile,v 1.2 2008/02/24 15:48:25 espie Exp $

COMMENT =	automatic locale import for drupal

DISTNAME = 	autolocale-5.x-1.x-dev
PKGNAME =	drupal5-autolocale-1p0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/profiles/localized
	mv ${PREFIX}/${DRUPAL_MODS}/autolocale/localized.profile ${PREFIX}/${DRUPAL_ROOT}/profiles/localized
	chown -R www.www ${PREFIX}/${DRUPAL_ROOT}

.include <bsd.port.mk>
