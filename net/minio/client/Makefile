# $OpenBSD: Makefile,v 1.23 2019/12/28 14:35:35 jasper Exp $

COMMENT =	cli for minio

V =		2019-03-20T21-29-03Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}
REVISION =	0

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
