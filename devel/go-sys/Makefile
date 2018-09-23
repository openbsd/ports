# $OpenBSD: Makefile,v 1.4 2018/09/23 17:21:29 jsing Exp $

COMMENT =	Go package for low-level operating system interaction
DISTNAME =	go-sys-20180825
GH_ACCOUNT =	golang
GH_PROJECT =	sys
GH_COMMIT =	11551d06cbcc94edc80a0facaccbda56473c19c1
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
