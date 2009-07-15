# $OpenBSD: Makefile,v 1.1.1.1 2009/07/15 10:42:28 espie Exp $

COMMENT =	japanese translation
LANG =		ja
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.2
PKGNAME =	drupal6-${LANG}-1.2

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
