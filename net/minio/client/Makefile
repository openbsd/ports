# $OpenBSD: Makefile,v 1.12 2018/08/23 18:47:52 jasper Exp $

COMMENT =	cli for minio

V =		2018-08-18T02-13-04Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
