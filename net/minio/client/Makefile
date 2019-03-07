# $OpenBSD: Makefile,v 1.21 2019/03/07 19:41:28 jasper Exp $

COMMENT =	cli for minio

V =		2019-03-06T18-41-35Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
