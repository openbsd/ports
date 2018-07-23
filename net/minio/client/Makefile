# $OpenBSD: Makefile,v 1.10 2018/07/23 18:07:54 jasper Exp $

COMMENT =	cli for minio

V =		2018-07-13T00-53-22Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
