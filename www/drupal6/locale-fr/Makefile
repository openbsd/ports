# $OpenBSD: Makefile,v 1.9 2016/06/30 11:48:26 espie Exp $

COMMENT =	french translation
MAINTAINER =	Marc Espie <espie@openbsd.org>
DRUPAL_LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${DRUPAL_LANG}-6.x-1.0
PKGNAME =	drupal6-${DRUPAL_LANG}-1.0
REVISION =	4

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
