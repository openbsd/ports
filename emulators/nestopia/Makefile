COMMENT =		accurate Nintendo Entertainment System emulator

GH_ACCOUNT =		0ldsk00l
GH_PROJECT =		nestopia
GH_TAGNAME =		1.52.1

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		http://0ldsk00l.ca/nestopia/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL2 X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama
WANTLIB += archive c fltk fltk_gl fltk_images fontconfig jpeg
WANTLIB += m png z

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/autoconf-archive
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		archivers/libarchive \
			devel/sdl2 \
			x11/fltk

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS} `sdl2-config --cflags`" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` -Wno-narrowing"
FAKE_FLAGS =		PREFIX="${WRKINST}/${TRUEPREFIX}"

CONFIGURE_STYLE =	autoreconf

USE_GMAKE =		Yes

NO_TEST =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.include <bsd.port.mk>
