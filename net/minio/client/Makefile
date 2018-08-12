# $OpenBSD: Makefile,v 1.11 2018/08/12 17:21:57 jasper Exp $

COMMENT =	cli for minio

V =		2018-08-02T17-39-44Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
