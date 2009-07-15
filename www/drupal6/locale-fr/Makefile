# $OpenBSD: Makefile,v 1.2 2009/07/15 09:42:32 espie Exp $

COMMENT =	french translation
LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.0
PKGNAME =	drupal6-${LANG}-1.0p0

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
