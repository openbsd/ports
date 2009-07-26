# $OpenBSD: Makefile,v 1.3 2009/07/26 12:20:08 espie Exp $

COMMENT =	japanese translation
LANG =		ja
EXTRACT_ONLY =

DISTNAME =	${LANG}-6.x-1.2
PKGNAME =	drupal6-${LANG}-1.2p1

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
