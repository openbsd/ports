# $OpenBSD: Makefile,v 1.4 2018/04/02 17:57:52 jasper Exp $

COMMENT =	cli for minio

V =		2018-03-25T01-22-22Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
