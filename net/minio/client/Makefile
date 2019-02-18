# $OpenBSD: Makefile,v 1.20 2019/02/18 19:45:12 jasper Exp $

COMMENT =	cli for minio

V =		2019-02-13T19-48-27Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
