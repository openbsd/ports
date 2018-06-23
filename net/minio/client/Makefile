# $OpenBSD: Makefile,v 1.8 2018/06/23 11:35:26 jasper Exp $

COMMENT =	cli for minio

V =		2018-06-09T02-18-09Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
