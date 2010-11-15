# $OpenBSD: Makefile,v 1.2 2010/11/15 09:05:41 stephan Exp $

COMMENT =	german translation
EXTRACT_ONLY =

DISTNAME =	de-6.x-1.0
PKGNAME =	drupal6-de-1.0
REVISION =	1

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
