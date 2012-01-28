# $OpenBSD: Makefile,v 1.6 2012/01/28 11:33:34 espie Exp $

COMMENT =	italian translation
LANG =		it
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.4
PKGNAME =	drupal6-${LANG}-1.4
REVISION =	3

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
