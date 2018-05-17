# $OpenBSD: Makefile,v 1.3 2018/05/17 09:45:58 espie Exp $

COMMENT =	Go package for low-level operating system interaction
DISTNAME =	go-sys-20180216
GH_ACCOUNT =	golang
GH_PROJECT =	sys
GH_COMMIT =	37707fdb30a5b38865cfb95e5aab41707daec7fd
CATEGORIES =	devel
REVISION =	0

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
