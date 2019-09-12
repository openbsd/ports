# $OpenBSD: Makefile,v 1.8 2019/09/12 18:49:45 jsing Exp $

COMMENT =	Go package for low-level operating system interaction
DISTNAME =	go-sys-20190904
GH_ACCOUNT =	golang
GH_PROJECT =	sys
GH_COMMIT =	43c01164e93111c754a278ab423ba01063c44917
CATEGORIES =	devel

HOMEPAGE =	https://godoc.org/golang.org/x/sys

MAINTAINER =	Joel Sing <jsing@openbsd.org>

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

_MAIN =		golang.org/x/sys
_SUBPKGS =	cpu \
		unix

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
