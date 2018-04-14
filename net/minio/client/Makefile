# $OpenBSD: Makefile,v 1.5 2018/04/14 22:53:54 sthen Exp $

COMMENT =	cli for minio

V =		2018-03-25T01-22-22Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}
REVISION =	0

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
