# $OpenBSD: Makefile,v 1.3 2018/03/06 18:38:02 jasper Exp $

COMMENT =	cli for minio

V =		2018-02-09T23-07-36Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}
REVISION =	0

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
