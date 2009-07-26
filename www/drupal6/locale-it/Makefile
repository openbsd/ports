# $OpenBSD: Makefile,v 1.3 2009/07/26 12:20:08 espie Exp $

COMMENT =	italian translation
LANG =		it
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.4
PKGNAME =	drupal6-${LANG}-1.4p1

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
