# $OpenBSD: Makefile,v 1.23 2020/07/03 21:12:29 sthen Exp $

COMMENT =		tryton desktop client

MODPY_EGG_VERSION =	5.0.23
DISTNAME =		tryton-${MODPY_EGG_VERSION}
REVISION =		0

TRYTON_PY =		Yes

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/librsvg \
			devel/py-dateutil${MODPY_FLAVOR}

#RUN_DEPENDS +=		goocalendar	# optional, not ported

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/tryton.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/32x32/apps/
	${INSTALL_DATA} ${WRKSRC}/tryton/data/pixmaps/tryton/tryton-icon.png \
		${PREFIX}/share/icons/hicolor/32x32/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/{README,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/${DISTNAME}

.include <bsd.port.mk>
