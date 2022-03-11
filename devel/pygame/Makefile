COMMENT=	set of Python modules designed for writing games

MODPY_EGG_VERSION =	2.0.1
REVISION=	2
DISTNAME=	pygame-${MODPY_EGG_VERSION}
PKGNAME =	py-game-${MODPY_EGG_VERSION}
CATEGORIES=	devel games

HOMEPAGE=	https://www.pygame.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf X11 jpeg png pthread
WANTLIB += freetype z ${MODPY_WANTLIB}

MODULES =	lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS=	devel/sdl-ttf \
		devel/sdl-image \
		devel/sdl-mixer

TEST_DEPENDS =	${BUILD_PKGPATH}

MAKE_ENV+=	LOCALBASE="${LOCALBASE}" \
		SDL_CONFIG="${LOCALBASE}/bin/sdl-config"

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}pygame
DOCDIR=		${PREFIX}/share/doc/${MODPY_PY_PREFIX}pygame

TEST_IS_INTERACTIVE=	x11
TEST_ENV =	PYTHONPATH=${WRKSRC}

do-configure:
	${SUBST_CMD} ${WRKSRC}/buildconfig/Setup.SDL1.in
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} buildconfig/config.py -auto -sdl1

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README.rst ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/data
	${INSTALL_SCRIPT} ${WRKSRC}/examples/data/* ${EXAMPLESDIR}/data
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.rst ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.{gif,html} ${DOCDIR}
.for i in ref tut
	${INSTALL_DATA_DIR} ${DOCDIR}/$i
	${INSTALL_DATA} `find ${WRKSRC}/docs/reST/$i -maxdepth 1 -type f` \
		${DOCDIR}/$i
.endfor
	@perl -pi -e 's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
		${EXAMPLESDIR}/*.py

.include <bsd.port.mk>
