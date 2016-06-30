# $OpenBSD: Makefile,v 1.8 2016/06/30 11:48:26 espie Exp $

COMMENT =	japanese translation
DRUPAL_LANG =		ja
EXTRACT_ONLY =

DISTNAME =	${DRUPAL_LANG}-6.x-1.2
PKGNAME =	drupal6-${DRUPAL_LANG}-1.2
REVISION =	5

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
