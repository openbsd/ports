# $OpenBSD: Makefile,v 1.36 2019/07/12 20:45:56 sthen Exp $

COMMENT=	set of Python modules designed for writing games

MODPY_EGG_VERSION =	1.9.3
DISTNAME=	pygame-${MODPY_EGG_VERSION}
PKGNAME =	py-game-${MODPY_EGG_VERSION}
CATEGORIES=	devel games
REVISION =	1

HOMEPAGE=	https://www.pygame.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf X11 jpeg png pthread
WANTLIB += freetype z ${MODPY_WANTLIB}

MODULES=	lang/python
#MODPY_PI =	Yes
# 1.9.3 was pulled out of the main pypi
MASTER_SITES =	https://files.pythonhosted.org/packages/61/06/3c25051549c252cc6fde01c8aeae90b96831370884504fe428a623316def/
MODPY_SETUPTOOLS =	Yes
SUBST_VARS +=	MODPY_LIB_SUFFIX
FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS+=	math/py-Numeric

LIB_DEPENDS=	devel/sdl-ttf \
		devel/sdl-image \
		devel/sdl-mixer

TEST_DEPENDS =	${BUILD_PKGPATH}

MAKE_ENV+=	LOCALBASE="${LOCALBASE}" \
		SDL_CONFIG="${LOCALBASE}/bin/sdl-config"

EXAMPLESDIR=	${PREFIX}/share/examples/pygame${MODPY_BIN_SUFFIX}
DOCDIR=		${PREFIX}/share/doc/pygame${MODPY_BIN_SUFFIX}

TEST_IS_INTERACTIVE=	x11
TEST_ENV =	PYTHONPATH=${WRKSRC}

do-configure:
	${SUBST_CMD} ${WRKSRC}/Setup.in
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} config.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/readme.txt ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/data
	${INSTALL_SCRIPT} ${WRKSRC}/examples/data/* ${EXAMPLESDIR}/data
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.rst ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.{gif,html} ${DOCDIR}
.for i in ref tut
	${INSTALL_DATA_DIR} ${DOCDIR}/$i
	${INSTALL_DATA} `find ${WRKSRC}/docs/reST/$i -maxdepth 1 -type f` \
		${DOCDIR}/$i
.endfor
	@perl -pi -e 's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
		${EXAMPLESDIR}/*.py

.include <bsd.port.mk>
