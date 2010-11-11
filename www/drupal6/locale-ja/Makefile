# $OpenBSD: Makefile,v 1.4 2010/11/11 12:35:09 sthen Exp $

COMMENT =	japanese translation
LANG =		ja
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.2
PKGNAME =	drupal6-${LANG}-1.2
REVISION =	1

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
