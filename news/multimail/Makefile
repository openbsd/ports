# $OpenBSD: Makefile,v 1.9 2018/08/26 13:14:31 fcambus Exp $

COMMENT =	offline mail reader for Blue Wave, QWK, OMEN, SOUP and OPX

V =		0.51
DISTNAME =	mmail-${V}
PKGNAME =	multimail-${V}

CATEGORIES =	news

HOMEPAGE =	https://multimail.sourceforge.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c curses m ${COMPILER_LIBCXX}

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
