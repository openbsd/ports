# $OpenBSD: Makefile,v 1.1.1.1 2008/03/16 11:25:56 espie Exp $

COMMENT =	newer jquery, required by other modules

DISTNAME = 	jquery_update-5.x-1.0
PKGNAME =	drupal5-jquery-update-1.0

RUN_DEPENDS =	:drupal->=5.7p1:www/drupal5/core

post-extract:
	rm ${WRKDIST}/jquery_update.module
	touch ${WRKDIST}/jquery_update.module

.include <bsd.port.mk>
