# $OpenBSD: Makefile,v 1.6 2019/03/16 13:38:58 jsing Exp $

COMMENT =	Go package for low-level operating system interaction
DISTNAME =	go-sys-20190226
GH_ACCOUNT =	golang
GH_PROJECT =	sys
GH_COMMIT =	cc5685c2db1239775905f3911f0067c0fa74762f
CATEGORIES =	devel

HOMEPAGE =	https://godoc.org/golang.org/x/sys

MAINTAINER =	Joel Sing <jsing@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

_MAIN =		golang.org/x/sys
_SUBPKGS =	cpu \
		unix

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
