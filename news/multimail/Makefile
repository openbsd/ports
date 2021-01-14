# $OpenBSD: Makefile,v 1.13 2021/01/14 21:55:22 fcambus Exp $

COMMENT =	offline mail reader for Blue Wave, QWK, OMEN, SOUP and OPX

V =		0.52
DISTNAME =	mmail-${V}
PKGNAME =	multimail-${V}
REVISION =	0

CATEGORIES =	news

HOMEPAGE =	https://multimail.sourceforge.io/

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c curses m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=multimail/}

FIX_EXTRACT_PERMISSIONS = Yes

RUN_DEPENDS =	archivers/unzip \
		archivers/zip

MAKE_ENV =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mm.1 ${PREFIX}/man/man1/multimail.1

.include <bsd.port.mk>
