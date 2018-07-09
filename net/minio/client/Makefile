# $OpenBSD: Makefile,v 1.9 2018/07/09 12:12:41 jasper Exp $

COMMENT =	cli for minio

V =		2018-06-30T00-13-31Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
