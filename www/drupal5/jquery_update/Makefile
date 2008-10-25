# $OpenBSD: Makefile,v 1.3 2008/10/25 14:20:34 espie Exp $

COMMENT =	newer jquery, required by other modules

DISTNAME = 	jquery_update-5.x-2.0
PKGNAME =	drupal5-jquery-update-2.0p0

RUN_DEPENDS =	:drupal->=5.7p1:www/drupal5/core

pre-patch:
	rm ${WRKDIST}/jquery_update.install

.include <bsd.port.mk>
