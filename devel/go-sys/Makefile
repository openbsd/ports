# $OpenBSD: Makefile,v 1.1.1.1 2017/09/08 16:40:36 jsing Exp $

COMMENT =	Go package for low-level operating system interaction
DISTNAME =	go-sys-20170824
GH_ACCOUNT =	golang
GH_PROJECT =	sys
GH_COMMIT =	07c182904dbd53199946ba614a412c61d3c548f5
CATEGORIES =	devel

HOMEPAGE =	https://godoc.org/golang.org/x/sys

MAINTAINER =	Joel Sing <jsing@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

_MAIN =		golang.org/x/sys
_SUBPKGS =	unix

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
