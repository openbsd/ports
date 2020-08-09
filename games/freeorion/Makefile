# $OpenBSD: Makefile,v 1.7 2020/08/09 09:37:07 kirby Exp $

V =		0.4.10
COMMENT =	turn-based space empire and galactic conquest computer game
DISTNAME =	FreeOrion_v${V}_2020-07-10.f3d403e_Source
PKGNAME =	freeorion-${V}
CATEGORIES =	games

HOMEPAGE =	https://www.freeorion.org/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

#Game: GPLv2+
#Assets: CC-BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_locale-mt boost_log-mt boost_log_setup-mt boost_python3-mt
WANTLIB += boost_regex-mt boost_serialization-mt boost_system-mt
WANTLIB += boost_thread-mt c freetype m ogg openal png ${MODPY_WANTLIB}
WANTLIB += vorbis vorbisenc vorbisfile z

MASTER_SITES =	https://github.com/freeorion/freeorion/releases/download/v${V}/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/cppcheck \
		devel/doxygen \
		devel/py-codestyle${MODPY_FLAVOR}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/boost \
		devel/sdl2 \
		graphics/glew \
		graphics/png

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/src-tarball

.if ${MACHINE_ARCH:Mpowerpc}
DPB_PROPERTIES =	lonesome
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/GG/CMakeLists.txt

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/freeorion/default/

.include <bsd.port.mk>
