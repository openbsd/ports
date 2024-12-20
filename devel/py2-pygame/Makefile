COMMENT=	set of Python modules designed for writing games

MODPY_EGG_VERSION=	2.0.3
# no more py2 releases
PORTROACH=	ignore:1
DISTNAME=	pygame-${MODPY_EGG_VERSION}
PKGNAME=	py-game-${MODPY_EGG_VERSION}
CATEGORIES=	devel games

HOMEPAGE=	https://www.pygame.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf X11 jpeg png pthread
WANTLIB += freetype z ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

LIB_DEPENDS=	devel/sdl-ttf \
		devel/sdl-image \
		devel/sdl-mixer

TEST_DEPENDS=	${BUILD_PKGPATH}

MAKE_ENV+=	LOCALBASE="${LOCALBASE}" \
		SDL_CONFIG="${LOCALBASE}/bin/sdl-config"

TEST_IS_INTERACTIVE=	x11
TEST_ENV=	PYTHONPATH=${WRKSRC}

do-configure:
	${SUBST_CMD} ${WRKSRC}/buildconfig/Setup.SDL1.in
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} buildconfig/config.py -auto -sdl1

.include <bsd.port.mk>
