# $OpenBSD: Makefile,v 1.14 2018/10/23 18:52:26 jasper Exp $

COMMENT =	cli for minio

V =		2018-10-18T00-40-05Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
