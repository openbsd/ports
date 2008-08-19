# $OpenBSD: Makefile,v 1.2 2008/08/19 23:45:30 espie Exp $

COMMENT =	newer jquery, required by other modules

DISTNAME = 	jquery_update-5.x-2.0
PKGNAME =	drupal5-jquery-update-2.0

RUN_DEPENDS =	:drupal->=5.7p1:www/drupal5/core

post-extract:
	rm ${WRKDIST}/jquery_update.module
	touch ${WRKDIST}/jquery_update.module

.include <bsd.port.mk>
