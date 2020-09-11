# $OpenBSD: Makefile,v 1.15 2020/09/11 21:12:48 bcallah Exp $

# "#error Unknown endianess!" in src/openrct2/common.h
NOT_FOR_ARCHS =	${BE_ARCHS}

V =		0.3.0
COMMENT =	open source re-implementation of RollerCoaster Tycoon 2
DISTNAME =	openrct2-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://openrct2.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 c crypto curl duktape fontconfig
WANTLIB += freetype icuuc jansson m png speexdsp ssl z zip

# Upstream does not make proper source releases.
# See: https://github.com/OpenRCT2/OpenRCT2/issues/5887
MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/libzip \
		audio/speexdsp \
		devel/jansson \
		devel/sdl2 \
		graphics/png \
		lang/duktape \
		net/curl \
		textproc/icu4c

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DDOWNLOAD_OBJECTS=OFF \
			-DDOWNLOAD_REPLAYS=OFF \
			-DDOWNLOAD_TITLE_SEQUENCES=OFF \
			-DOPENRCT2_BRANCH=master \
			-DOPENRCT2_COMMIT_SHA1_SHORT="135cc10"

# Downloads things. See: https://github.com/OpenRCT2/OpenRCT2/issues/5710
NO_TEST =	Yes

# Upstream changed the location to read title sequences from.
# https://github.com/rdbaris/OpenRCT2/commit/2a00293d88bb38e65040cde888842d9bf1e236ab
post-extract:
	mv ${WRKSRC}/data/title ${WRKSRC}/data/sequence

pre-configure:
	sed -i 's,/usr/local,${TRUEPREFIX},g' \
		${WRKSRC}/src/openrct2/platform/Platform.Linux.cpp

.include <bsd.port.mk>
