BROKEN-i386 =		various always_inline functions require sse2, but would be inlined into function 'Loop' that is compiled without support for sse2

# asmjit in gzdoom-3.7.2 supports only x86 and arm/arm64
# arm/arm64 are only supported on Windows and Linux
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		legacy fork of GZDoom with lower system requirements

V =			4.14.3a

DIST_TUPLE =		github drfrag666 lzdoom l${V} .
PKGNAME =		lzdoom-${V}

CATEGORIES=		games

HOMEPAGE =		https://zdoom.org

MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 bz2 c execinfo m
WANTLIB += openal vpx zmusic

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DNO_GTK=ON
CONFIGURE_ARGS += 	-DDYN_OPENAL=NO
CONFIGURE_ARGS +=	-DHAVE_STDINT_H=1
CONFIGURE_ARGS +=	-DNO_OPENMP=ON

CFLAGS +=		-I${X11BASE}/include
CXXFLAGS +=		-I. -I${LOCALBASE}/include

LIB_DEPENDS =		archivers/bzip2 \
			audio/openal \
			audio/zmusic \
			devel/sdl2 \
			multimedia/libvpx

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

.include <bsd.port.mk>
