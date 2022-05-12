V =		1.1.0
COMMENT =	graphical interface to manage/explore OpenBSD packages
DISTNAME =	AppManager-${V}
PKGNAME =	appmanager-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://tildegit.org/solene/AppManager/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://tildegit.org/solene/AppManager/archive/

DISTFILES =	appmanager-{}${V}${EXTRACT_SUFX}

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	databases/sqlports

RUN_DEPENDS =	devel/desktop-file-utils \
		games/godot \
		x11/gtk+3,-guic

NO_TEST =	Yes

WRKSRC =	${WRKDIR}/appmanager

CONFIGURE_STYLE=none
ALL_TARGET=	db

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/AppManager/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps/
	cp -r ${WRKSRC}/src/* ${PREFIX}/share/AppManager/
	${INSTALL_DATA} ${WRKSRC}/openbsd/appmanager.png \
	    ${PREFIX}/share/icons/hicolor/128x128/apps/
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/appmanager ${PREFIX}/bin/appmanager
	${INSTALL_DATA} ${WRKSRC}/openbsd/appmanager.desktop \
	    ${PREFIX}/share/applications/appmanager.desktop

.include <bsd.port.mk>
