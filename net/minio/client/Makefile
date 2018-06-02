# $OpenBSD: Makefile,v 1.7 2018/06/02 12:44:19 jasper Exp $

COMMENT =	cli for minio

V =		2018-05-25T20-20-15Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
