# $OpenBSD: Makefile,v 1.17 2019/01/27 14:55:20 jasper Exp $

COMMENT =	cli for minio

V =		2019-01-25T23-38-19Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
