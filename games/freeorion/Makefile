# $OpenBSD: Makefile,v 1.6 2020/05/14 18:14:50 kirby Exp $

V =		0.4.9
COMMENT =	turn-based space empire and galactic conquest computer game
DISTNAME =	FreeOrion_v${V}_2020-02-02.db53471_Source
PKGNAME =	freeorion-${V}
CATEGORIES =	games

HOMEPAGE =	https://www.freeorion.org/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

#Game: GPLv2+
#Assets: CC-BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU SDL2 boost_atomic-mt
WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_python-mt boost_regex-mt boost_serialization-mt
WANTLIB += boost_system-mt boost_thread-mt c
WANTLIB += freetype m ogg openal png ${MODPY_WANTLIB} vorbis vorbisenc
WANTLIB += vorbisfile z

MASTER_SITES =	https://github.com/freeorion/freeorion/releases/download/v${V}/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/cppcheck \
		devel/py-codestyle

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

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

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/freeorion/default

.include <bsd.port.mk>
