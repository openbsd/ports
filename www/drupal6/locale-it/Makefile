# $OpenBSD: Makefile,v 1.8 2016/06/30 11:48:26 espie Exp $

COMMENT =	italian translation
DRUPAL_LANG =		it
EXTRACT_ONLY =

DISTNAME =	${DRUPAL_LANG}-6.x-1.4
PKGNAME =	drupal6-${DRUPAL_LANG}-1.4
REVISION =	5

post-extract:
	mkdir -p ${WRKDIST}
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
