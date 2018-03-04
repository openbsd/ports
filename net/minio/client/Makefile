# $OpenBSD: Makefile,v 1.2 2018/03/04 12:56:51 jasper Exp $

COMMENT =	cli for minio

GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.2018-02-09T23-07-36Z
PKGNAME =	minioc-0.20180209

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
