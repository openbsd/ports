# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:53 sthen Exp $

COMMENT =	offline mail reader for Blue Wave, QWK, OMEN, SOUP and OPX

V =		0.52
DISTNAME =	mmail-${V}
PKGNAME =	multimail-${V}

CATEGORIES =	news

HOMEPAGE =	https://multimail.sourceforge.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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
