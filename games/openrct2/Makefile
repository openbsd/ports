# $OpenBSD: Makefile,v 1.1.1.1 2017/06/28 16:43:46 bcallah Exp $

V =		0.0.7.20170626
COMMENT =	open source re-implementation of RollerCoaster Tycoon 2
DISTNAME =	openrct2-${V}
CATEGORIES =	games x11

SHARED_LIBS +=	openrct2                  0.0 # 0.0

# Will use their GitHub releases starting next release.
# GH_ACCOUNT =	OpenRCT2
# GH_PROJECT =	OpenRCT2
# GH_TAGNAME =	v${V}

HOMEPAGE =	https://openrct2.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL2 c crypto curl fontconfig freetype iconv jansson
WANTLIB += m png pthread speexdsp ssl z zip

# Goes away next release.
MASTER_SITES =	https://devio.us/~bcallah/source/

# Doesn't build with gcc-4.9.4
COMPILER =	clang

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/libzip \
		audio/speex \
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
			-DOPENRCT2_BRANCH=develop \
			-DOPENRCT2_COMMIT_SHA1_SHORT=`date +%Y%m%d`

# Downloads things. See: https://github.com/OpenRCT2/OpenRCT2/issues/5710
NO_TEST =	Yes

pre-configure:
	sed -i -e 's,$${LIBopenrct2_VERSION},${LIBopenrct2_VERSION},g' \
		-e 's,-Werror,,g' \
		${WRKSRC}/src/openrct2/CMakeLists.txt
	sed -i 's,/usr/local,${TRUEPREFIX},g' \
		${WRKSRC}/src/openrct2/platform/linux.c

# This will be removed at next release.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openrct2/title
	${INSTALL_DATA} ${WRKSRC}/title/* ${PREFIX}/share/openrct2/title

.include <bsd.port.mk>
