COMMENT=	set of Python modules designed for writing games

MODPY_DISTV=	2.6.1
DISTNAME=	pygame-${MODPY_DISTV}
PKGNAME=	py-game-${MODPY_DISTV}
CATEGORIES=	devel games
REVISION=	1

HOMEPAGE=	https://www.pygame.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf X11 freetype jpeg
WANTLIB += png portmidi ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	lang/cython
LIB_DEPENDS=	audio/portmidi \
		devel/sdl2-ttf \
		devel/sdl2-image \
		devel/sdl2-mixer
RUN_DEPENDS=	math/py-numpy

TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_ENV+=	LOCALBASE="${LOCALBASE}" \
		SDL_CONFIG="${LOCALBASE}/bin/sdl2-config"

TEST_IS_INTERACTIVE=	x11
TEST_ENV=	PYTHONPATH=${WRKSRC}

.if ${MACHINE_ARCH:Mi386}
CFLAGS+=	-msse2
.endif

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} buildconfig/config.py -auto

.include <bsd.port.mk>
