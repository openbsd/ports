# $OpenBSD: Makefile,v 1.20 2019/07/12 20:46:19 sthen Exp $

COMMENT =	2D action adventure game engine
CATEGORIES =	games x11
SUBST_VARS +=	GH_TAGNAME

GH_ACCOUNT =	hypatia-engine
GH_PROJECT =	hypatia
GH_TAGNAME =	0.3.6
REVISION =	0

HOMEPAGE =	http://engine.hypatia.software/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-enum34 \
		devel/pygame>=1.9.1 \
		graphics/py-Pillow

TEST_DEPENDS =	graphics/py-Pillow

WRKDIST =	${WRKDIR}/hypatia-engine-${GH_TAGNAME}

pre-patch:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' setup.py

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/hypatia-demo ${PREFIX}/bin/hypatia-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hypatia/resources
	${INSTALL_SCRIPT} ${WRKSRC}/demo/game.py ${PREFIX}/share/examples/hypatia
	cd ${WRKSRC}/demo/resources && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/examples/hypatia/resources/{}" \;
	cd ${WRKSRC}/demo/resources && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/examples/hypatia/resources/{}" \;

.include <bsd.port.mk>
