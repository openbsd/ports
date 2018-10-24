# $OpenBSD: Makefile,v 1.10 2018/10/24 14:28:09 sthen Exp $

COMMENT =	offline mail reader for Blue Wave, QWK, OMEN, SOUP and OPX

V =		0.51
DISTNAME =	mmail-${V}
PKGNAME =	multimail-${V}
REVISION =	0

CATEGORIES =	news

HOMEPAGE =	https://multimail.sourceforge.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

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
