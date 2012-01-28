# $OpenBSD: Makefile,v 1.3 2012/01/28 11:33:34 espie Exp $

COMMENT =	german translation
EXTRACT_ONLY =

DISTNAME =	de-6.x-1.0
PKGNAME =	drupal6-de-1.0
REVISION =	2

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
