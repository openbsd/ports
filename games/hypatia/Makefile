# $OpenBSD: Makefile,v 1.8 2015/09/21 14:35:24 jasper Exp $

COMMENT =	2D action adventure game engine
DISTNAME =	hypatia-${GH_TAGNAME}
CATEGORIES =	games x11
SUBST_VARS +=	GH_TAGNAME
REVISION =	1

GH_ACCOUNT =	hypatia-engine
GH_PROJECT =	hypatia
GH_TAGNAME =	0.2.29

HOMEPAGE=	http://hypatia-engine.github.io/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-enum34 \
		devel/pygame>=1.9.1 \
		games/pyganim \
		graphics/py-Pillow

TEST_DEPENDS =	games/pyganim \
		graphics/py-Pillow

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/hypatia-demo ${PREFIX}/bin/hypatia-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hypatia/resources
	${INSTALL_SCRIPT} ${WRKSRC}/demo/game.py ${PREFIX}/share/examples/hypatia
	cd ${WRKSRC}/demo/resources && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/examples/hypatia/resources/{}" \;
	cd ${WRKSRC}/demo/resources && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/examples/hypatia/resources/{}" \;

.include <bsd.port.mk>
