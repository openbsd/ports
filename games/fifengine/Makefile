BROKEN =	consumers fail at runtime in a way that suggests that fifengine is broken; tests fail in a similar way

BROKEN-powerpc =out of memory when compiling fifePYTHON_wrap.cxx
BROKEN-sparc64 =out of memory when compiling fifePYTHON_wrap.cxx
BROKEN-i386 =	out of memory when compiling fifePYTHON_wrap.cxx (not every time but most)

COMMENT =	2D game engine

GH_ACCOUNT =	fifengine
GH_PROJECT =	fifengine
GH_COMMIT =	be64c707dea6b3250bd4355bf5c825d25920087d
DISTNAME =	fifengine-0.4.2pl20220725

CATEGORIES =	games

HOMEPAGE =	https://www.fifengine.net/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += GL GLEW SDL2 SDL2_image SDL2_ttf boost_atomic-mt boost_filesystem-mt
WANTLIB += boost_system-mt fifechan fifechan_opengl fifechan_sdl
WANTLIB += m openal png tinyxml vorbis vorbisfile z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
BUILD_DEPENDS =		devel/py-setuptools \
			devel/swig>=3.0.12
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-ttf \
			games/fifechan>=0.1.5 \
			graphics/glew \
			textproc/tinyxml
RUN_DEPENDS =		devel/py-future \
			textproc/py-yaml

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN} \
			-Wno-dev

post-install:
	${MODPY_COMPILEALL} ${WRKINST}/${MODPY_SITEPKG}

# doesn't run all that much, and some of what's there needs X (so no
# good with PORTS_PRIVSEP), but what does run anyway seems to fail
# in the same way that consumers (e.g. unknown-horizons) fails.
do-test:
	cd ${WRKSRC}; rm -rf build; ln -s ${WRKBUILD} build
	cd ${WRKSRC}; ${MODPY_BIN} ./run_tests.py -a

.include <bsd.port.mk>
