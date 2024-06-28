BROKEN =	qt6 python
COMMENT =	Mah Jongg four players board game for KDE5
DISTNAME =	kajongg-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kajongg

MODULES +=	lang/python

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kpty \
		x11/kde-applications/libkmahjongg>=${MODKDE_VERSION} \
		devel/py-twisted${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

RUN_DEPENDS =	devel/py-twisted${MODPY_FLAVOR} \
		x11/kde-applications/libkmahjongg>=${MODKDE_VERSION} \
		audio/vorbis-tools \
		x11/py-qt5${MODPY_FLAVOR}

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/kajongg/
	echo "#!/bin/sh" > ${WRKSRC}/kajongg.sh
	echo "${MODPY_BIN} ${TRUEPREFIX}/share/kajongg/kajongg.py" >> \
		${WRKSRC}/kajongg.sh
	${INSTALL_SCRIPT} ${WRKSRC}/kajongg.sh ${PREFIX}/bin/kajongg

.include <bsd.port.mk>
