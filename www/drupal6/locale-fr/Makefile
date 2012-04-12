# $OpenBSD: Makefile,v 1.8 2012/04/12 08:16:06 naddy Exp $

COMMENT =	french translation
MAINTAINER =	Marc Espie <espie@openbsd.org>
DRUPAL_LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${DRUPAL_LANG}-6.x-1.0
PKGNAME =	drupal6-${DRUPAL_LANG}-1.0
REVISION =	3

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
