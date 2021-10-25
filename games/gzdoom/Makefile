# $OpenBSD: Makefile,v 1.13 2021/10/25 07:19:59 ajacoutot Exp $

BROKEN-i386 =		various always_inline functions require sse2, but would be inlined into function 'Loop' that is compiled without support for sse2

# asmjit in gzdoom-3.7.2 supports only x86 and arm/arm64
# arm/arm64 are only supported on Windows and Linux
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		OpenGL engine for idTech 1 games like doom,hexen,heretic...

V =			4.3.3
GH_ACCOUNT =		coelckers
GH_PROJECT =		gzdoom
GH_TAGNAME =		g${V}
DISTNAME =		gzdoom-${V}
REVISION =		1

CATEGORIES=		games

HOMEPAGE =		https://zdoom.org

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} SDL2 bz2 c execinfo jpeg m mpg123
WANTLIB +=		openal sndfile z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DNO_GTK=ON
CONFIGURE_ARGS += 	-DDYN_OPENAL=NO -DDYN_MPG123=NO -DDYN_SNDFILE=NO
CONFIGURE_ARGS +=	-DFLUIDSYNTHLIB1="libfluidsynth.so"
CONFIGURE_ARGS +=	-DHAVE_STDINT_H=1

LIB_DEPENDS =		audio/libsndfile \
			audio/mpg123 \
			audio/openal \
			archivers/bzip2 \
			graphics/jpeg \
			devel/sdl2

NO_TEST =		Yes

.include <bsd.port.mk>
