# $OpenBSD: Makefile,v 1.6 2018/04/28 09:54:39 jasper Exp $

COMMENT =	cli for minio

V =		2018-04-28T00-08-20Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
