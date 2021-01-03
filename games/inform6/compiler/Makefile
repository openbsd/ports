# $OpenBSD: Makefile,v 1.1.1.1 2021/01/03 16:42:30 bcallah Exp $

COMMENT =	compiler for Inform 6 interactive fiction
PKGNAME =	${DISTNAME:L}

GH_ACCOUNT =	DavidKinder
GH_PROJECT =	Inform6
GH_TAGNAME =	v6.34

WANTLIB += c

RUN_DEPENDS =	games/inform6/library

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/inform ${PREFIX}/bin

.include <bsd.port.mk>
