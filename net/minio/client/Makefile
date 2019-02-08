# $OpenBSD: Makefile,v 1.19 2019/02/08 20:11:22 jasper Exp $

COMMENT =	cli for minio

V =		2019-02-06T20-26-56Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
