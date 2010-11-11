# $OpenBSD: Makefile,v 1.5 2010/11/11 12:35:09 sthen Exp $

COMMENT =	french translation
LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.0
PKGNAME =	drupal6-${LANG}-1.0
REVISION =	2

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
