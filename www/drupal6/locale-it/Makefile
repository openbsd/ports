# $OpenBSD: Makefile,v 1.2 2009/07/24 12:20:14 espie Exp $

COMMENT =	italian translation
LANG =		it
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.4
PKGNAME =	drupal6-${LANG}-1.4p0

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
