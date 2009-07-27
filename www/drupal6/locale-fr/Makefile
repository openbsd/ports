# $OpenBSD: Makefile,v 1.4 2009/07/27 12:39:05 espie Exp $

COMMENT =	french translation
LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.0
PKGNAME =	drupal6-${LANG}-1.0p2

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
