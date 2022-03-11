COMMENT =	2D action adventure game engine
CATEGORIES =	games x11
SUBST_VARS +=	GH_TAGNAME

GH_ACCOUNT =	hypatia-engine
GH_PROJECT =	hypatia
GH_TAGNAME =	0.3.6
REVISION =	3

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/pygame${MODPY_FLAVOR}>=1.9.1 \
		graphics/py-Pillow${MODPY_FLAVOR}

TEST_DEPENDS =	graphics/py-Pillow${MODPY_FLAVOR}

WRKDIST =	${WRKDIR}/hypatia-engine-${GH_TAGNAME}

FIX_CRLF_FILES = setup.py

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/hypatia-demo ${PREFIX}/bin/hypatia-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hypatia/resources
	${INSTALL_SCRIPT} ${WRKSRC}/demo/game.py ${PREFIX}/share/examples/hypatia
	cd ${WRKSRC}/demo/resources && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/examples/hypatia/resources/{}" \;
	cd ${WRKSRC}/demo/resources && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/examples/hypatia/resources/{}" \;

.include <bsd.port.mk>
