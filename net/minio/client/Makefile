# $OpenBSD: Makefile,v 1.22 2019/03/30 01:52:04 jasper Exp $

COMMENT =	cli for minio

V =		2019-03-20T21-29-03Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
