# WARNING: symbol(_ZTINSt3__19allocatorIvEE) size mismatch, relink your program
BROKEN =	issues with 'std::__1::allocator<void>' (mixing C++ dialects?)

V =		0.5.1
COMMENT =	turn-based space empire and galactic conquest computer game
DISTNAME =	FreeOrion_v${V}_Source
PKGNAME =	freeorion-${V}
CATEGORIES =	games

HOMEPAGE =	https://www.freeorion.org/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

#Game: GPLv2+
#Assets: CC-BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL2 boost_atomic-mt
WANTLIB += boost_chrono-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_python${MODPY_VERSION:C/\.//g}-mt boost_regex-mt
WANTLIB += boost_serialization-mt boost_thread-mt c freetype m ogg openal
WANTLIB += png ${MODPY_WANTLIB} vorbis vorbisenc vorbisfile z

SITES =		https://github.com/freeorion/freeorion/releases/download/v${V}/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/cppcheck \
		devel/doxygen \
		devel/py-codestyle

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2 \
		devel/boost \
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
	${MODPY_COMPILEALL} ${PREFIX}/share/freeorion/default/

.include <bsd.port.mk>
