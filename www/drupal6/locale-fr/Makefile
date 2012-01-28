# $OpenBSD: Makefile,v 1.7 2012/01/28 11:24:10 espie Exp $

COMMENT =	french translation
MAINTAINER =	Marc Espie <espie@openbsd.org>
LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.0
PKGNAME =	drupal6-${LANG}-1.0
REVISION =	3

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
