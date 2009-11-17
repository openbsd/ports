# $OpenBSD: Makefile,v 1.1.1.1 2009/11/17 09:53:52 stephan Exp $

COMMENT =	german translation
EXTRACT_ONLY =

DISTNAME =	de-6.x-1.0
PKGNAME =	drupal6-de-1.0

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
