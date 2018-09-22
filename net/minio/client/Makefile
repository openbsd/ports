# $OpenBSD: Makefile,v 1.13 2018/09/22 08:30:00 jasper Exp $

COMMENT =	cli for minio

V =		2018-09-22T00-47-16Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
