# $OpenBSD: Makefile,v 1.1.1.1 2009/04/03 14:07:58 espie Exp $

COMMENT =	french translation
LANG =		fr
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.0
PKGNAME =	drupal6-${LANG}-1.0

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
