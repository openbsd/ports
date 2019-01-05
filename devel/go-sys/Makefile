# $OpenBSD: Makefile,v 1.5 2019/01/05 13:07:47 jsing Exp $

COMMENT =	Go package for low-level operating system interaction
DISTNAME =	go-sys-20181220
GH_ACCOUNT =	golang
GH_PROJECT =	sys
GH_COMMIT =	97b4c2a9293883a2418b8bba5485dc86b24460f7
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
