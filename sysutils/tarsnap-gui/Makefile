# $OpenBSD: Makefile,v 1.1.1.1 2015/08/25 00:19:42 jturner Exp $
COMMENT = 		frontend to the popular Tarsnap backup service

V = 			0.6
DISTNAME =		tarsnap-gui-${V}
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/Tarsnap/tarsnap-gui/wiki/Tarsnap
MAINTAINER =		Josh Grosse <josh@jggimi.homeip.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Widgets c m
WANTLIB += 		pthread

GH_ACCOUNT =		Tarsnap
GH_PROJECT =		tarsnap-gui
GH_TAGNAME =		v${V}

MODULES =		x11/qt5
RUN_DEPENDS =		sysutils/tarsnap

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake-qt5

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tarsnap-gui ${PREFIX}/bin/tarsnap-gui

.include <bsd.port.mk>
