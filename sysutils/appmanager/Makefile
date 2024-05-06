V =		1.1.1
COMMENT =	graphical interface to manage/explore OpenBSD packages
DISTNAME =	AppManager-${V}
PKGNAME =	appmanager-${V}
CATEGORIES =	sysutils
REVISION =	2

HOMEPAGE =	https://tildegit.org/solene/AppManager/

# MIT
PERMIT_PACKAGE=	Yes

SITES =		https://tildegit.org/solene/AppManager/archive/

DISTFILES =	appmanager-{}${V}${EXTRACT_SUFX}

MODULES =	lang/python

RUN_DEPENDS =	devel/desktop-file-utils \
		databases/sqlports \
		games/godot \
		x11/gtk+4,-guic

NO_TEST =	Yes
NO_BUILD =	Yes

WRKSRC =	${WRKDIR}/appmanager

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/AppManager/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps/
	cp -r ${WRKSRC}/build_json.py ${WRKSRC}/src/* ${PREFIX}/share/AppManager/
	${INSTALL_DATA} ${WRKSRC}/openbsd/appmanager.png \
	    ${PREFIX}/share/icons/hicolor/128x128/apps/
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/appmanager ${PREFIX}/bin/appmanager
	${INSTALL_DATA} ${WRKSRC}/openbsd/appmanager.desktop \
	    ${PREFIX}/share/applications/appmanager.desktop

.include <bsd.port.mk>
