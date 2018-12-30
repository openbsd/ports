# $OpenBSD: Makefile,v 1.16 2018/12/30 14:45:49 jasper Exp $

COMMENT =	cli for minio

V =		2018-12-27T00-37-49Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
