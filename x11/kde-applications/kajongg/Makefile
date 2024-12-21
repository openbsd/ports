BROKEN =	qt6 python
COMMENT =	Mah Jongg four players board game for KDE
DISTNAME =	kajongg-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/games/kajongg

MODULES +=	lang/python

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kpty \
		x11/kde-applications/libkmahjongg>=${MODKDE_GEAR_VERSION} \
		devel/py-twisted \
		x11/py-qt6

RUN_DEPENDS =	devel/py-twisted \
		x11/kde-applications/libkmahjongg>=${MODKDE_GEAR_VERSION} \
		audio/vorbis-tools \
		x11/py-qt6

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/kajongg/
	echo "#!/bin/sh" > ${WRKSRC}/kajongg.sh
	echo "${MODPY_BIN} ${TRUEPREFIX}/share/kajongg/kajongg.py" >> \
		${WRKSRC}/kajongg.sh
	${INSTALL_SCRIPT} ${WRKSRC}/kajongg.sh ${PREFIX}/bin/kajongg

.include <bsd.port.mk>
