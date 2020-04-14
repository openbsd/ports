# $OpenBSD: Makefile,v 1.24 2020/04/14 21:38:00 sthen Exp $

BROKEN-aarch64 = looks like the vendored golang.org/x/sys/unix is too old for aarch64

COMMENT =	cli for minio

V =		2019-03-20T21-29-03Z
GH_PROJECT =	mc
GH_TAGNAME =	RELEASE.${V}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}
REVISION =	0

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include <bsd.port.mk>
