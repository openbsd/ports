# $OpenBSD: Makefile,v 1.11 2019/07/14 00:39:36 naddy Exp $

COMMENT =	Jagged Alliance 2 engine

GH_ACCOUNT =	ja2-stracciatella
GH_PROJECT =	ja2-stracciatella
GH_TAGNAME =	v0.15.1
REVISION =	6

CATEGORIES =	games

HOMEPAGE =	http://ja2-stracciatella.github.io/

# SFI-SCLA / public domain
PERMIT_PACKAGE =	Yes

WANTLIB +=	boost_filesystem boost_system c m pthread SDL ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	devel/sdl \
		devel/boost

RUN_DEPENDS =	x11/gtk+3,-guic \
		devel/desktop-file-utils

USE_GMAKE =	Yes
MAKE_ENV =	CXXFLAGS="${CXXFLAGS} -Wno-narrowing"
MAKE_FLAGS =	Q= WITH_UNITTESTS=0 WITH_DEBUGINFO=1 \
		CXX="${CXX}"

NO_TEST =	Yes

# strip BOM, gcc 4.2.1 doesn't understand it
post-extract:
	perl -pi -e 's,\xef\xbb\xbf,,' ${WRKSRC}/Build/Utils/_*Text.cc

.include <bsd.port.mk>
