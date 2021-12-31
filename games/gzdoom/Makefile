# $OpenBSD: Makefile,v 1.14 2021/12/31 10:57:56 op Exp $

BROKEN-i386 =		various always_inline functions require sse2, but would be inlined into function 'Loop' that is compiled without support for sse2

# asmjit in gzdoom-3.7.2 supports only x86 and arm/arm64
# arm/arm64 are only supported on Windows and Linux
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		OpenGL engine for idTech 1 games like doom,hexen,heretic...

V =			4.7.1
GH_ACCOUNT =		coelckers
GH_PROJECT =		gzdoom
GH_TAGNAME =		g${V}
DISTNAME =		gzdoom-${V}

CATEGORIES=		games

HOMEPAGE =		https://zdoom.org

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 bz2 c execinfo jpeg m
WANTLIB += openal z zmusic

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DNO_GTK=ON
CONFIGURE_ARGS += 	-DDYN_OPENAL=NO
CONFIGURE_ARGS +=	-DHAVE_STDINT_H=1
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I. -I${LOCALBASE}/include"

LIB_DEPENDS =		audio/openal \
			audio/zmusic \
			archivers/bzip2 \
			graphics/jpeg \
			devel/sdl2

NO_TEST =		Yes

.include <bsd.port.mk>
