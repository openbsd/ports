# $OpenBSD: Makefile,v 1.18 2019/02/01 07:33:23 jasper Exp $

COMMENT =	cli for minio

V =		2019-01-30T19-57-22Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
