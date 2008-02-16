# $OpenBSD: Makefile,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $

COMMENT =	automatic locale import for drupal

DISTNAME = 	autolocale-5.x-1.x-dev
PKGNAME =	drupal5-autolocale-1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/profiles/localized
	mv ${PREFIX}/${DRUPAL_MODS}/autolocale/localized.profile ${PREFIX}/${DRUPAL_ROOT}/profiles/localized
	chown -R www.www ${PREFIX}/${DRUPAL_ROOT}

.include <bsd.port.mk>
