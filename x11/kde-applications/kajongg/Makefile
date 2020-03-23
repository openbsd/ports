# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:16 rsadowski Exp $

COMMENT =	Mah Jongg four players board game for KDE5
DISTNAME =	kajongg-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kajongg


MODULES +=	x11/kde-applications \
		lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

FLAVOR ?= 		python3
FLAVORS = 		python3

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kpty \
		x11/kde-applications/libkmahjongg \
		devel/py-twisted${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

RUN_DEPENDS =	devel/py-twisted${MODPY_FLAVOR} \
		x11/kde-applications/libkmahjongg \
		audio/vorbis-tools \
		x11/py-qt5${MODPY_FLAVOR}

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kajongg/
	echo "#!/bin/sh" > ${WRKSRC}/kajongg.sh
	echo "${MODPY_BIN} ${TRUEPREFIX}/share/kajongg/kajongg.py" >> \
		${WRKSRC}/kajongg.sh
	${INSTALL_SCRIPT} ${WRKSRC}/kajongg.sh ${PREFIX}/bin/kajongg

.include <bsd.port.mk>
