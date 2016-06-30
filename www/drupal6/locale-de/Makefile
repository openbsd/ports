# $OpenBSD: Makefile,v 1.4 2016/06/30 11:48:26 espie Exp $

COMMENT =	german translation
EXTRACT_ONLY =

DISTNAME =	de-6.x-1.0
PKGNAME =	drupal6-de-1.0
REVISION =	3

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
