# $OpenBSD: Makefile,v 1.4 2017/08/15 01:07:45 naddy Exp $

V =		0.1.0
COMMENT =	open source re-implementation of RollerCoaster Tycoon 2
DISTNAME =	openrct2-${V}
CATEGORIES =	games x11
REVISION =	1

SHARED_LIBS +=	openrct2                  1.0 # 1.0

HOMEPAGE =	https://openrct2.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL2 c crypto curl fontconfig freetype iconv jansson
WANTLIB += m png pthread speexdsp ssl z zip
WANTLIB += ${COMPILER_LIBCXX}

# Upstream does not make proper source releases.
# See: https://github.com/OpenRCT2/OpenRCT2/issues/5887
MASTER_SITES =	https://devio.us/~bcallah/source/

# Doesn't build with gcc-4.9.4
COMPILER =	clang

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/libzip \
		audio/speexdsp \
		converters/libiconv \
		devel/jansson \
		devel/sdl2 \
		graphics/png \
		net/curl

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# -DOPENRCT2_COMMIT_SHA1_SHORT is a lie but still useful.
CONFIGURE_ARGS =	-DCMAKE_SHARED_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DDOWNLOAD_TITLE_SEQUENCES=OFF \
			-DOPENRCT2_BRANCH=master \
			-DOPENRCT2_COMMIT_SHA1_SHORT=`date +%Y%m%d`

# Downloads things. See: https://github.com/OpenRCT2/OpenRCT2/issues/5710
NO_TEST =	Yes

pre-configure:
	sed -i -e 's,$${LIBopenrct2_VERSION},${LIBopenrct2_VERSION},g' \
		-e 's,-Werror,,g' \
		${WRKSRC}/src/openrct2/CMakeLists.txt
	sed -i 's,/usr/local,${TRUEPREFIX},g' \
		${WRKSRC}/src/openrct2/platform/linux.c

# Upstream does not make proper source releases.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openrct2/title
	${INSTALL_DATA} ${WRKSRC}/title/* ${PREFIX}/share/openrct2/title

.include <bsd.port.mk>
