# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:19 sthen Exp $

BROKEN-i386 =		various always_inline functions require sse2, but would be inlined into function 'Loop' that is compiled without support for sse2

# asmjit in gzdoom-3.7.2 supports only x86 and arm/arm64
# arm/arm64 are only supported on Windows and Linux
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		OpenGL engine for idTech 1 games like doom,hexen,heretic...

V =			4.1.2
PKGNAME =		gzdoom-${V}
DISTNAME =		gzdoom-src-g${V}
REVISION =		0

CATEGORIES=		games

HOMEPAGE =		https://zdoom.org

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

MASTER_SITES =		https://zdoom.org/files/gzdoom/src/
EXTRACT_SUFX =		.zip

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} SDL2 bz2 c execinfo jpeg m mpg123
WANTLIB +=		openal sndfile z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DNO_GTK=ON
CONFIGURE_ARGS += 	-DDYN_OPENAL=NO -DDYN_MPG123=NO -DDYN_SNDFILE=NO
CONFIGURE_ARGS +=	-DFLUIDSYNTHLIB1="libfluidsynth.so"

LIB_DEPENDS =		audio/mpg123 \
			audio/openal \
			archivers/bzip2 \
			devel/libexecinfo \
			graphics/jpeg \
			devel/sdl2

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/gzdoom-g${V}

.include <bsd.port.mk>
