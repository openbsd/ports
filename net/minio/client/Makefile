# $OpenBSD: Makefile,v 1.15 2018/11/14 19:17:38 jasper Exp $

COMMENT =	cli for minio

V =		2018-11-06T01-12-20Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
