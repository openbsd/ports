# $OpenBSD: Makefile,v 1.1.1.1 2017/12/23 21:19:39 landry Exp $

COMMENT =	cli for minio

GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.2017-12-12T01-08-02Z
PKGNAME =	minioc-0.20171212

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
